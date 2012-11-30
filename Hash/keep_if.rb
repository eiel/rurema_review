h = {a: 1, b: 2}
h.keep_if { |key, value| key == :a } # => {:a=>1}

h = {a: 1, b: 2}
h.select! { |key, value| key == :b} # => {:b=>2}


# なにもおきなかった場合
h = {a: 1, b: 2}
h.keep_if { |key, value| true } # => {:a=>1, :b=>2}

h = {a: 1, b: 2}
h.select! { |key, value| true } # => nil
