SuperGoro = Module.new

class SubGoro
  include SuperGoro
end

SubGoro === SubGoro.new         # => true
SuperGoro === SubGoro.new       # => true
SubGoro === String.new          # => false

case SubGoro.new
when SubGoro
  "true!!"                      # => "true!!"
end

# 右辺を case に。
case SubGoro.new
when String
  # 通らない
  "true!!"                      # => 
end
