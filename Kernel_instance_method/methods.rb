class Hoge
  def hoge
    :hoge
  end

  protected
  def mogu
    :mogu
  end

  private
  def goro
    :goro
  end
end

h = Hoge.new

def h.dara
  :dara
end

h.methods                # => [:dara, :hoge, :mogu, :nil?, :===, :=~, :!~, :eql?, :hash, :<=>, :class, :singleton_class, :clone, :dup, :initialize_dup, :initialize_clone, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :to_s, :inspect, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :respond_to_missing?, :extend, :display, :method, :public_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :==, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
h.methods false          # => [:dara]

h.private_methods               # => [:goro, :initialize_copy, :remove_instance_variable, :sprintf, :format, :Integer, :Float, :String, :Array, :warn, :raise, :fail, :global_variables, :__method__, :__callee__, :eval, :local_variables, :iterator?, :block_given?, :catch, :throw, :loop, :caller, :trace_var, :untrace_var, :at_exit, :syscall, :open, :printf, :print, :putc, :puts, :gets, :readline, :select, :readlines, :`, :p, :test, :srand, :rand, :trap, :exec, :fork, :exit!, :system, :spawn, :sleep, :exit, :abort, :load, :require, :require_relative, :autoload, :autoload?, :proc, :lambda, :binding, :set_trace_func, :Rational, :Complex, :gem, :gem_original_require, :initialize, :singleton_method_added, :singleton_method_removed, :singleton_method_undefined, :method_missing]

h.private_methods false         # => [:goro]

h.protected_methods             # => [:mogu]

h.protected_methods false       # => [:mogu]

h.public_methods                # => [:dara, :hoge, :nil?, :===, :=~, :!~, :eql?, :hash, :<=>, :class, :singleton_class, :clone, :dup, :initialize_dup, :initialize_clone, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :to_s, :inspect, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :respond_to_missing?, :extend, :display, :method, :public_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :==, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]

h.public_methods false          # => [:dara, :hoge]
