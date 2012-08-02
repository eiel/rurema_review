`echo 'hoge'`                   # => "hoge\n"
$?                              # => #<Process::Status: pid 90990 exit 0>

goro = "hoge"
`echo #{goro}`                 # => "hoge}\n"
