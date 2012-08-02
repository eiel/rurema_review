autoload :AutoloadSample, "./autoload_sample"

autoload? :AutoloadSample       # => "./autoload_sample"
include AutoloadSample
autoload? :AutoloadSample       # => nil
# >> load AutoloadSample
