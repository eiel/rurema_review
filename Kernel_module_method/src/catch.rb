# -*- coding: utf-8 -*-
catch do |first|
  (1..10).each do |i|
    catch do |second|
      (1..20).each do |j|
        (i..10).each do |k|
          puts "#{k} 一番深いループ"
          throw second
        end
      end
    end ## throw second でここへ飛ぶ
    puts "#{i} 一番浅いループ"
    throw first
  end
end ## throw first でここへ飛ぶ

# >> 1 一番深いループ
# >> 1 一番浅いループ
