from beet import Context

# Runs during the build
def main(ctx: Context):
    yield ## Stuff after yield runs after the build is almost finished
    ## A sound when the build is (**mostly**) finished