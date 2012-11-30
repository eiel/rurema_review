h = Hash.new(10)
h[0]                            # => 10
h.default                       # => 10

# 変更もできる
h.default = 200
h[0]                            # => 200
h.default                       # => 200

h.default_proc                  # => nil
h.default_proc = proc { |hash, key| 300 }
h[0]                            # => 300
h.default_proc                  # => #<Proc:0x007fd70308fcc8@-:11>
h.default                       # => nil

h.default = 400
h[0]                            # => 400
h.default_proc                  # => nil
h.default                       # => 400
