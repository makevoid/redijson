# jedi
# require 'redijson' # from rubygems
# require_github 'makevoid/redijson' # from github - you need to require the 'require_github' gem (TODO)
require_relative '../redijson'

R = RediJson.new
R[:foo] = ["f", "o", "o"]
p R[:foo]

puts "\nand now strings\n"
R[:bar] = "bar"
p R[:bar]
