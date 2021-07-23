def say_hello(name):
    if name:
        output = ", %s" % name
    else:
        output = " there"

    return "Hello%s!" % output
