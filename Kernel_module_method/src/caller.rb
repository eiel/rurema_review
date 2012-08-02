caller                          # => []

def mogu
  caller
end

def hoge
  mogu
end

hoge                            # => ["-:8:in `hoge'", "-:11:in `<main>'"]
