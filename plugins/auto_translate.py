from beet import Context, Language
from mecha import Mecha
import mecha

mc = Mecha()

def setfallback(ctx: Context):
    en_us = ctx.assets.languages.get("essentials:en_us")    
    print(en_us.data.get("hello_world"))

    for function in ctx.data.functions.values():
        for line in function.lines:
            ast = mc.parse(line)
            for x in ast.walk():
                match x:
                    case mecha.AstNbtCompoundEntry():
                        if x.key.value == "text":
                            print(x.value.value)
                        if x.key.value == "translate":
                            if not en_us.data.get(x.value.value):
                                print(x.value.value)
            