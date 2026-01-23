from beet import Context, Function
from mecha import (
    Mecha,
    AstNbtCompoundEntry,
    AstNbtCompound,
    AstNbtCompoundKey,
    AstCommand,
    AstNbtList,
    AstNbtValue,
)

mc = Mecha()

default_lang = dict()


def check_dialogs(ctx: Context):
    for name, dialog in ctx.data.dialogs.items():
        for key, value in dialog.data.items():
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
    global default_lang
    print("Checking all functions for text_components that are not translatable")
    for name, function in ctx.data.functions.items():
        ast = mc.parse(function)
        print(f"{name}")
        for command in ast.commands:
            visit_command(function, command)
        print()
        return


def visit_command(function: Function, command: AstCommand):
    for argument in command.arguments:
        match argument:
            case AstNbtList():
                visit_list(function, argument)
            case AstNbtCompound():
                visit_compound(function, argument)
            case AstCommand():
                visit_command(function, argument)


def visit_list(function: Function, list: AstNbtList):
    for element in list.elements:
        match element:
            case AstNbtList():
                visit_list(function, element)
            case AstNbtCompound():
                visit_compound(function, element)


def visit_compound(function: Function, compound: AstNbtCompound):
    fallback = ""
    global default_lang
    for entry in compound.entries:
        match entry:
            case AstNbtCompoundEntry():
                if entry.key.value == "translate":
                    key = entry.value.value
                    if key in default_lang:
                        fallback = default_lang[key]
                if entry.key.value == "fallback":
                    modify_fallback(function, entry, fallback)
                if entry.key.value == "with":
                    visit_list(function, entry.value)


def modify_fallback(function: Function, entry: AstNbtCompoundEntry, fallback: str):
    print(entry.location)
    print(entry.value.value)
    print(fallback)


def check_functions_old(ctx: Context):
    global default_lang

    print("Checking all functions for text_components that are not translatable")
    for function_name, function in ctx.data.functions.items():
        for line in function.lines:
            ast = mc.parse(line)
            for x in ast.walk():
                match x:
                    case AstNbtCompoundEntry():
                        if x.key.value == "text":
                            # check if text is not empty, not a whitespace helper or a placeholder (starting with @)
                            if not (
                                len(x.value.value) == 0
                                or x.value.value.isspace()
                                or x.value.value.startswith("@")
                            ):
                                print_untranslatable_node(x, function_name)
                        if x.key.value == "translate":
                            if not (
                                default_lang.get(x.value.value)
                                or x.value.value.startswith("@")
                            ):
                                print_untranslatable_node(x, function_name)
                        if x.key.value == "fallback":
                            if not (len(x.value.value) > 0):
                                print("empty fallback")
    print("Done checking functions")


def print_untranslatable_node(node: AstNbtCompoundEntry, function_name):
    print(
        f"Found untranslatable text in function: {function_name} | at: {node.key.location} | {node.value.value}<- HERE"
    )


def collect_default_lang(ctx: Context):
    global default_lang
    lang_code = ctx.meta["def_lang"]
    if not len(default_lang) == 0:
        return default_lang
    language_dict = dict()
    print(f"Scanning for default language code '{lang_code}'")
    for key, lang in ctx.assets.languages.items():
        if key.endswith(lang_code):
            language_dict.update(lang.data)
            print(f"Added translation keys of file: '{key}'")
    print(f"Done collecting translation keys for language code '{lang_code}'")
    print()

    default_lang = language_dict
