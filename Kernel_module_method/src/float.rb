Float(1)                        # => 1.0
Float("0.01")                   # => 0.01
begin
  Float("aaa")
rescue => e
  e                             # => #<ArgumentError: invalid value for Float(): "aaa">
end
"aaa".to_f                      # => 0.0
