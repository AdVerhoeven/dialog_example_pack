from beet import Context
from mecha import Mecha, AstNbtCompoundEntry
import json
import mecha

mc = Mecha()

def check_dialogs(ctx: Context):
    for (name, dialog) in ctx.data.dialogs.items():
        for (key, value) in dialog.data.items():
            # if the key is of a type that can contain text_components, validate
            match key:
                case "title" | "external_title":
                    validate_json_text(value)
                case "body" | "actions" | "inputs":
                    validate_inner_json_text(value)
        break

def validate_json_text(text_component: dict):
    print(text_component)

def validate_inner_json_text(jobject: dict):
    print("do something")

def check_functions(ctx: Context):
    en_us = ctx.assets["essentials"].languages.get("en_us")
        
    if len(en_us.data.get("hello_world")) > 0:
        print("found en_us.json")

    print("Checking all functions for text_components that are not translatable")
    for (name, function) in ctx.data.functions.items():
        for line in function.lines:
            ast = mc.parse(line)
            for x in ast.walk():
                match x:
                    case mecha.AstNbtCompoundEntry():
                        if x.key.value == "text":
                            # check if text is not empty, not a whitespace helper or a placeholder (starting with @)
                            if not (len(x.value.value) == 0 
                                    or x.value.value.isspace() 
                                    or x.value.value.startswith("@")):
                                printnode(x, name)
                        if x.key.value == "translate":
                            if not (en_us.data.get(x.value.value) or x.value.value.startswith("@")):
                                printnode(x, name)
                        if x.key.value == "fallback":
                            if not (len(x.value.value) > 0):
                                print("empty fallback")

def printnode(node: AstNbtCompoundEntry, name):
    print(name + " | " + node.key.location.__str__())
    print(node.value.value)
    print()

            