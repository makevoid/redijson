# RediJson

small library to use redis + arbitrary objects (serialized in json)


# API / Usage

strings

```rb
R[:foo] # nil
R[:foo] = "bar"
R[:foo] # bar
```

and more!

```rb
R[:foo] = ["f", "o", "o"]

R[:foo] # ["f", "o", "o"]
```

As you can see, it serializes and deserializes JSON arrays, and...

```rb
R[:foo] = { foo: "bar" }

R[:foo] # { foo: "bar" }
```

...objects


and the implementation is really few lines of code, because it's composing two simple things, redis and json together!
