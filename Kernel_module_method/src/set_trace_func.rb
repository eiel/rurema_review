set_trace_func proc { |event, file, line, id, binding, klass|
  p [event, file, line, id, binding, klass]
}

puts 'hoge'
# >> ["c-return", "-", 3, :set_trace_func, #<Binding:0x007fe090839898>, Kernel]
# >> ["line", "-", 5, nil, #<Binding:0x007fe090839230>, nil]
# >> ["c-call", "-", 5, :puts, #<Binding:0x007fe090838d80>, Kernel]
# >> ["c-call", "-", 5, :puts, #<Binding:0x007fe090838970>, IO]
# >> ["c-call", "-", 5, :write, #<Binding:0x007fe090838420>, IO]
# >> hoge["c-return", "-", 5, :write, #<Binding:0x007fe090837ed0>, IO]
# >> ["c-call", "-", 5, :write, #<Binding:0x007fe091089d68>, IO]
# >> 
# >> ["c-return", "-", 5, :write, #<Binding:0x007fe091089bb0>, IO]
# >> ["c-return", "-", 5, :puts, #<Binding:0x007fe0910899f8>, IO]
# >> ["c-return", "-", 5, :puts, #<Binding:0x007fe091089840>, Kernel]
