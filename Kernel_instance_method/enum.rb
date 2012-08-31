class Hoge
  # eachっぽくうごくようなメソッドを用意
  def hoge(i=10)
    (0..i).each do |n|
      yield n
    end
  end
end

enum = Hoge.new.enum_for(:hoge,3)

enum.each do |n|
  n                             # => 0, 1, 2, 3
end

# Enumrableなメソッドが使える
enum.map(&:to_i) # => [0, 1, 2, 3]
enum.any? { |n| n == 1 }         # => true
