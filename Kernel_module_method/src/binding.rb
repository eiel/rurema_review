hoge = "top levele"
binding.eval("hoge")            # => "top levele"

def mogu
  hoge = "mogu" # !> assigned but unused variable - hoge
  binding
end

mogu.eval("hoge")               # => "mogu"
