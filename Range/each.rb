(1..10).each do |n|
  n                             # => 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
end

('a'..'z').each do |c|
  c                             # => "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
end


("aaa".."aaz").each do |str|
  str                           # => "aaa", "aab", "aac", "aad", "aae", "aaf", "aag", "aah", "aai", "aaj", "aak", "aal", "aam", "aan", "aao", "aap", "aaq", "aar", "aas", "aat", "aau", "aav", "aaw", "aax", "aay", "aaz"
end

require 'ipaddr'
ip = IPAddr.new("192.168.1.1")
ip2 = IPAddr.new("192.168.1.10")

(ip..ip2).each do |i|
  i.to_s                        # => "192.168.1.1", "192.168.1.2", "192.168.1.3", "192.168.1.4", "192.168.1.5", "192.168.1.6", "192.168.1.7", "192.168.1.8", "192.168.1.9", "192.168.1.10"
end

