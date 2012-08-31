class Hoge
  def initialize
    @hoge = :hoge
  end
end


h = Hoge.new
h.instance_variable_defined? :@hoge   # => true
h.instance_variable_defined? "@hoge"  # => true

h.instance_variable_get :@hoge        # => :hoge
h.instance_variable_set :@hoge, :mogu # => :mogu
h.instance_variable_get :@hoge        # => :mogu

h.instance_variables            # => [:@hoge]

h.instance_variable_defined? :@mogu    # => false
h.instance_variable_get :@mogu         # => nil # !> instance variable @mogu not initialized
h.instance_variable_set:@mogu, :hoge   # => :hoge
# セットすると存在する
h.instance_variable_defined? :@mogu    # => true

h.instance_variables            # => [:@hoge, :@mogu]
