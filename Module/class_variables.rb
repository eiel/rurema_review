module Hoge
  @@hoge = ""
end

Hoge.class_variables            # => [:@@hoge]
Hoge.class_variable_defined? :@@hoge    # => true
Hoge.class_variable_get :@@hoge         # => ""
Hoge.class_variable_set :@@hoge, "hoge" # => "hoge"

module Hoge
  @@hoge                        # => "hoge"
end
