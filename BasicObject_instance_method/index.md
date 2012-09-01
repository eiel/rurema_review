確認時の環境

    $ ruby -v

    ruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-darwin11.4.1]

# BasicObject インスタンスメソッド

http://rurema.clear-code.com/1.9.3/class/BasicObject.html

あらゆるオブジェクトで使えるメソッド。Ruby1.9から登場。DSLのための環境を用意するためにさらに必要最低限になってるらしい。

## !

[サンプルコード](!.rb)

* ! を true 返すような実装は可能だけど、非常に不自然になる
* 否定した際に副作用を起こしたいときにオーバーライドすることになるらしい

## !=

* ! をオーバーライドした場合は整合性をとるように実装すべき
* デファルトの実装は == を使って実装されるため自然と正しい結果を返す

## ==

* 同じオブジェクトでなくても、同じ性質をもつのであれば true を返すべき
  * 同値性
* デフォルトでは equal? と同じ同一性で判定する

## `__id__`

* どのような整数が割り当てられるかは不定らしいけどFixnumクラスのインスタンスは現状一定値を返すらしい (x*2 + 1)
* Object#object_id と同じ。

## `__send__`

[サンプルコード](__send__.rb)

* メソッド名からメソッドを呼ぶのに利用できる

## equal?

[サンプルコード](equal%3F.rb)

* 再定義すべきでないメソッド
* 同一性の確認

## instance_eval

[サンプルコード](instance_eval.rb)

* インスタンスメソッドを定義するときと同等のスコープの状態でプログラムを評価できます。
* 文字列でもブロックでも渡せる
* 文字列を渡す場合は第2引数にファイル名を渡せる
* ブロックを使う場合はブロックの外側のスコープがまざる。

## instance_exec

* instance_evalと違うのはブロックしか渡せないとこ?
  * ソースみた感じではevalは条件下でinstance_execと同じ関数をよぶのでそれっぽい
* evalより安全な香りがする？

# private メソッド

オーバーライドすることのあるメソッドと考えてよさそう。

## method_missing

[サンプルコード](method_missing.rb)

* メソッドが実装されてなくてもなにかしたいならオーバーライドしよう
* 呼ばれたメソッドがないときに呼ばれるメソッド
* 動的にメソッドを作成した場合に。
* 必要あれば `respond_to_missing?` もオーバーライドしよう


## singleton_method_added

[サンプルコード](singleton_method_added.rb)

* 特異メソッドが追加されたときに呼ばれる
* うまく使ってる例を探したいところ
* 通常のメソッドの場合は Module#method_add があるそうな

## singleton_method_removed

[サンプルコード](singleton_method_removed.rb)

* Module#remove_methodで メソッドは削除できるそうな

## singleton_method_undefined

* 基本的にはremovedと同じ。
* undef_methodされると、removedしてさらに少し処理をしているみたいです。
  * ソースはよんでない

# きになったところ

* ! に != へのリンクがあってもよいかも
* `instance_eval` に `instance_exec` のリンクがあってもよいかも
