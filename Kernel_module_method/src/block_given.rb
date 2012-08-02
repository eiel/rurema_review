block_given?                    # => false
def hoge(&block)
  block_given?
end

def mogu
  block_given?
end

hoge                            # => false

hoge do end                     # => true

hoge { }                        # => true

mogu                            # => false

mogu do end                     # => true
