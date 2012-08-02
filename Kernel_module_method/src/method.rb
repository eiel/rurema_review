__method__                      # => nil
__callee__

def hoge
  __method__                    # => :hoge
  __callee__                    # => :hoge
end

hoge
