hash = { hoge: 1, goro: 2 }
Hash[hash]                      # => {:hoge=>1, :goro=>2}
hash.__id__                     # => 70167707097920
hash.__id__                     # => 70167707097920
Hash[hash].__id__               # => 70167694514160
# コピーしてるので id が変わる
Hash[hash].__id__               # => 70167694513180

Hash[:hoge, 1, :goro, 2]        # => {:hoge=>1, :goro=>2}
begin
  # 奇数個だと ArgumentError
  Hash[:hoge, 1, :goro]
rescue ArgumentError => e
  e # => #<ArgumentError: odd number of arguments for Hash>
end
