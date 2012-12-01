"hoge" == "hoge"                # => true
{a: "hoge"} == {a: "hoge"}      # => true


# なんとなく気になって
String === "hoge"              # => true
{a: String} === {a: "hoge"}     # => false
{a: String} === {a: String}     # => true
