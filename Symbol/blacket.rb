# self[n]
:hoge[0]                        # => "h"
:hoge[1]                        # => "o"

# self[n,len]
:hoge[1,2]                      # => "og"

# self[string]
:hoge['og']                     # => "og"
:hoge['go']                     # => nil

# self[regexp]
:hoge[/o.*/]                    # => "oge"

# self[range]
:hoge[1..3]                     # => "oge"
