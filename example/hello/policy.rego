package example.hello

# hello defaults to false
default hello := false

# if "message" == "world" in input, hello is true
hello if input.message == "world"
