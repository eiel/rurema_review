autoload :AutoloadSample, "./autoload_sample"

include AutoloadSample
hoge                            # => "hoge"

module AutoloadSample
  autoload :Nest, "./autoload_sample/nest.rb"
end

AutoloadSample::Nest.new
# >> load AutoloadSample
# >> load AutoloadSample::Nest
