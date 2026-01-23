from beet import Context

global def_lang


def collect_default_lang(ctx: Context) -> dict | None:
    lang_code = ctx.meta["def_lang"]
    language_dict = dict()
    print(f"Scanning for default language code '{lang_code}'")
    for key, lang in ctx.assets.languages.items():
        if key.endswith(lang_code):
            language_dict.update(lang.data)
            print(f"Added translation keys of file: '{key}'")
    print(f"Done collecting translation keys for language code '{lang_code}'")
    print()
    global def_lang
    def_lang = language_dict


def validate_alt_languages(ctx: Context):
    global def_lang
    default_code = ctx.meta["def_lang"]
    alternate_languages = dict()
    for key, language in ctx.assets.languages.items():
        if not key.endswith(default_code):
            # Note that the key contains the namespace it was found in, but minecraft doesn't care about that
            lang_code = key[-5:]
            print(
                f"Found '{key}', adding/merging into collector for '{lang_code}'"
            )
            if not lang_code in alternate_languages:
                alternate_languages[lang_code] = language.data
            else:
                alternate_languages[lang_code].update(language.data)

    print("Scanning for missing translation keys")
    for lang_code, alt_language in alternate_languages.items():
        print(f"Scanning: '{lang_code}'")
        for translation_key in def_lang.keys():
            if not translation_key in alt_language:
                print(f'Missing: "{translation_key}"')
        print(f"Done scanning '{lang_code}'\n")
