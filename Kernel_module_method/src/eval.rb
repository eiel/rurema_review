a = nil
eval('a = "hoge"')
a                               # => "hoge"

eval('b = "mogu"')
b                               # => 
# ~> -:6:in `<main>': undefined local variable or method `b' for main:Object (NameError)
