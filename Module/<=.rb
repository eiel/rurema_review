SuperGoro = Module.new

module SubGoro
  include SuperGoro
end

SubGoro <= SuperGoro             # => true
SuperGoro <= SubGoro             # => false

SubGoro <= String                # => nil
# ここだけ違う
SubGoro <= SubGoro               # => true
