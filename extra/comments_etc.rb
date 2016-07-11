# comments reasonings, cool new apis (TODO write_block - seems cool) and throw away code

# metamorphic api, more data structures, feels like ruby.


# R = RediJson.new
#
#
def write

end

def write_simple

end

# write automatically detects a block
#
# RS.write_block do |r|
#   r[:foo] = "bar"
#
#   r[:foo] = [] # uses a list
#
#   r[:foo] = {}
# end
#
def write_block(&block;)
# @r. ???
end

def read(value)
  R[""]
end

# def array<<


# def write_array
#
# TODO
#
# I liked to do a custom implementation but there's json
#
# otherwise write_array would have been probably with lists?
#
# on key meta object []

key = "foo" # from outside, self is the key meta object []

new api: R[key].lpush "foobar"
or:      R[key]    << "value"

def <<(value)
  R.lpush key, value
end

and to read of course you just do R["foo"], it will return an array, like ["f", "o", "o"]

keys = -> { R.keys "*" }
keys[]
keys.()

# standard redis
#
# key/value (strings/ints via to_i)
#
R[:foo] # nil
R[:foo] = "foo"
#
#
# array / list
#
R[:foo] = ["f", "o", "o"]
