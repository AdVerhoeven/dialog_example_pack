from beet import Context


def collect_default_lang(ctx: Context, lang_code: str = "en_us") -> dict | None:
    language_dict = dict()
    print(f"Scanning for default language code '{lang_code}'")
    for (key, lang) in ctx.assets.languages.items():
        if key.endswith(lang_code):
            language_dict.update(lang.data)
            print(f"Added translation keys of file: '{key}'")
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
