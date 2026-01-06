from beet import Context
from mecha import Mecha, AstNbtCompoundEntry
import nbtlib
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

def check_functions(ctx: Context, lang_code: str='en_us'):
    def_lang = collect_default_lang(ctx,lang_code)

    print("Checking all functions for text_components that are not translatable")
    for (name, function) in ctx.data.functions.items():
        ast = mc.parse(function)
        print(ast)
        return


def check_functions_old(ctx: Context):
    en_us = collect_default_lang(ctx, "en_us")

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
                            if not (en_us.get(x.value.value) or x.value.value.startswith("@")):
                                printnode(x, name)
                        if x.key.value == "fallback":
                            if not (len(x.value.value) > 0):
                                print("empty fallback")
    print("Done checking functions")


def printnode(node: AstNbtCompoundEntry, name):
    print(name + " | " + node.key.location.__str__())
    print(node.value.value)
    print()


def collect_default_lang(ctx: Context, lang_code: str = "en_us") -> dict | None:
    language_dict = dict()
    print(f"Scanning for default language code '{lang_code}'")
    for (key, lang) in ctx.assets.languages.items():
        if key.endswith(lang_code):
            language_dict.update(lang.data)
            print(f"Added translation keys of file: '{key}'")
    print()
    print(f"Done collecting translation keys for language code '{lang_code}'")
    print()

    return language_dict


def validate_alt_languages(ctx: Context, lang_code: str = "en_us"):
    default_lang = collect_default_lang(ctx, lang_code)
    alt_langs = dict()
    for (key, lang) in ctx.assets.languages.items():
        if not key.endswith(lang_code):
            alt_code = key[-5:]
            print(
                f"Found '{key}', adding/merging into collector for '{alt_code}'")
            if not alt_code in alt_langs:
                alt_langs[alt_code] = lang.data
            else:
                alt_langs[alt_code].update(lang.data)

    print("Scanning for missing translation keys")
    for (lang_code, alt_language) in alt_langs.items():
        print(f"Scanning: '{lang_code}'")
        for tk in default_lang.keys():
            if not tk in alt_language:
                print(f"Missing: \"{tk}\"")
        print(f"Done scanning '{lang_code}'\n")
