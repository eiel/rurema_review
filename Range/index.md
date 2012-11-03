確認時の環境

```
$ ruby -v
ruby 1.9.3p286 (2012-10-12 revision 37165) [x86_64-darwin12.2.0]
```

# Range

http://rurema.clear-code.com/1.9.3/class/Range.html


1から10 というような範囲を表現するクラス
Range は immutable 生成後に変更できない

# リテラル

式..式
式...式

式はなにが使えるんだろう。
3つのほうは最後の数値を含まない範囲になる
左側が小さい数値である必要がある

# 特異メソッド

## new

* Rangeオブジェクトを作ります
* begin, end, exclude_end
* exclude_end は bool 最後を含むかどうか

# インスタンスメソッド

## ==

* begin, end exclude_end が一致すれば 等しい

## ===, include?, member?

[サンプルコード](include.rb)

* 値が範囲内かどうかを調べます

## begin, first

* 最初の要素を返す

## cover?

[サンプルコード](cover.rb)

* include? とは <=> を使って調べる点が違う
* 文字列などを使うと挙動が違う


## each

[サンプルコード](each.rb)

* 範囲内をeach
* succをもつオブジェクトなら利用できる

## end, last

* 最後の要素を返す

## equal?

* この説明いらないんじゃね？

## exclude_end?

* 終端を含むかどうか確認します。

## hash

* 始端と 終端と exclude_end に応じて変化

## step

[サンプルコード](step.rb)

* 第1引数の数おきにくりかえせる


# 気になった点

* `equal?`の説明いらなような気がしなくもない。
