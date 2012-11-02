確認時の環境

```
$ ruby -v

ruby 1.9.3p286 (2012-10-12 revision 37165) [x86_64-darwin12.2.0]
```

# Class

クラスを表現するオブジェクトの Class

http://rurema.clear-code.com/1.9.3/class/Class.html

# 特異メソッド

Class.[メソッド名] という形式で使えるメソッド

## new

新しいクラスオブジュクトを作る

[サンプルコード](singular_new.rb)

* Classインスタンスと同じように振る舞うので混乱しないように
* でも、実際は同じメソッドを呼びだす模様
* 定数に代入すると名前になる
* 第2引数に親クラスを指定

# インスタンスメソッド

クラスオブジェクトに対して使えるメソッド

String.[メソッド] という形式で使える。

## allocate

* 単にオブジェクトを生成する

## new

* allocate して initialize する
* しかし initialize は private メソッドなので、
  * String.allocate.send(:initialize)

## superclass

* 親クラスを返す
* class メソッドはインスタンスに対して使うけど、superclass は Class にあるので混乱しないように


# プライベートメソッド

オーバライドして使う。
必要なときに自動的に呼びだされるメソッド

## inherited

* 継承したときに呼ばれるメソッド
* 第1引数にクラス名が渡される

