確認時の環境

```
$ ruby -v
ruby 2.0.0p0 (2013-02-24 revision 39474) [x86_64-darwin12.2.1]
```

# Symbol

http://rurema.clear-code.com/1.9.3/class/Symbol.html

シンボルは ある文字列 が 常に同一のオブジェクトを指すようになっています。

```ruby
# "hoge" を評価するたびに新しいオブジェクトが生成される
"hoge".object_id == "hoge".object_id  # => false

# :hoge を評価すると必ず同じオブジェクトにアクセスできる
:hoge.object_id == :hoge.object_id    # => true
```

文字列のように使え、同一性の確認が底コストで行われるので、Hash の key によく使われる。Enum の代わりにも使われる。

## オブジェクトの生成方法

種類

* 先頭に : をつける
* 先頭に : をつけて `'` や `"` でくくる
* %記法 s を使用する
* 文字列を intern, to_sym 変換する

どれも同じ意味

* :hoge
* :'hoge'
* %s!hoge!
* 'hoge'.to_sym
* 'hoge'.intern

## 利点

* 文字列を使うより効率的
* immutable なので変更されることがない
* 数値に意味を持たせるコードより読みやすいプログラムが書ける

# 概略

```
[Symbol, Comparable, Object, Kernel, BasicObject]

The number of class(modulle) methods is 1
all_symbols

The number of intsance methods is 18
[]
capitalize
casecmp
downcase
empty?
encoding
id2name
intern
length
match
next
size
slice
succ
swapcase
to_proc
to_sym
upcase
```

# 特異メソッド

`Symbol.メソッド名` のように使えるメソッド

## all_symbols

* 定義済みのオブジェクトの一覧を返す

* 生成済みのシンボルの一覧

[サンプルコード](all_symbols.rb)

# インスタンスメソッド

## [], slice

* self[n] n 番目の文字列を返す
* self[n,length] n 番目から 長さ length の文字列の返す
* self[string] string が一致する部分があれば stringを返す
* self[regexp] regexp にマッチする文字列を返す
* self[range] rangeが示す範囲の文字列を返す
* 使ってるの満たことない
* 文字列でもシンボルでもどっちでもいいときに…？

[サンプルコード](blacket.rb)

## capitalize

* 先頭を大文字に残りを小文字に
* 戻り値はシンボル

[サンプルコード](capitalize.rb)

## casecmp

* 大文字と小文字を区別せずに `<=>`
* cmp -> compare

[サンプルコード](casecmp.rb)

## downcase

* すべて小文字にする
* 戻り値はシンボル

[サンプルコード](capitalize.rb)

## empty?

* 長さが0のシンボルかどうか判定
* 長さ0のシンボルを作るには `:''`, `''.intern`, `''.to_sym` など

[サンプルコード](empty.rb)

## encoding

* 文字列のエンコーディング情報を返す
* ASCII以外のシンボルが作れる

[サンプルコード](encoding.rb)

## id2name

* シンボルをに対応する文字列を返す
* 逆は intern
* to_sと同じ動作

## intern, to_sym

* とくに何もしない。self を返す

## length

* シンボルを文字列にしたときの長さ
* sizeと同じ動作

## match

* 正規表現との マッチ をする
* =~ と同じ動作

## next, succ

* 次のシンボルを返す
* to_s.next.to_sym

[サンプルコード](next.rb)

## size

* シンボルを文字列にしたときの長さ
* sizeと同じ動作

## swapcase

* 大文字を小文字に
* 小文字を大文字に

[サンプルコード](capitalize.rb)

## to_proc

* Proc オブジェクトを生成する
* blockを渡すメソッドのブロックでの処理がメソッド呼びだしをひとつで済む場合の簡易記法として

```ruby
(1..3).map(&:to_s)   # => ["1","2","3"]
# 以下と同じ
(1..3).map(&:to_s.to_proc)
# 以下と同じ
(1..3).map { |n| :to_s.to_proc.call(n) }
# 以下と同じ
(1..3).map { |n| n.to_s }
```

## upcase

* 全部を大文字に

[サンプルコード](capitalize.rb)

# まとめ

文字列っぽく使えるメソッドがいくつか用意されてる。