確認時の環境

    $ ruby -v

    ruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-darwin11.4.1]

# Kernel インスタンスメソッド

http://rurema.clear-code.com/1.9.3/class/Object

Objectにincludeされるため、おおむね全てのオブジェクトで使えるメソッド。
るりまではObjectのところに書かれてます。

## ==

* 性質が同じであれば true を返すべきな比較メソッド
* equal?のときに説明したので省略

## ===

[サンプルコード](===.rb)

* case 式で使用される比較メソッド
* case 式での動きを調整したいならオーバライド
* クラスとか範囲オブジェクトとか正規表現オブジェクトなんかがオーバライドしてる気がする
* 所属性チェックらしい(Rangeがわかりやすいかな)

## =~

* 右辺に正規表現オブジェクトが来る場合をサポートする
* 未定義の場合は nil を返す

## send

* 任意のメソッドが呼びだせます

## class

* オブジェクトのクラスを返す

## clone, dup

[サンプルコード](clone.rb)

* 同じオブジェクトのコピーを作成する
* cloneのほうが完全に複製する
* dupはtaint情報は複製する。freeze や 特異メソッドはコピーされない

## display

* to_s して printする
* 引数に io を受けとれる

## enum_for, to_enum

[サンプルコード](enum.rb)

* Enumaratorのファクトリ。短い
* self.enum_for(method, args) は Enumerator(self, method ,*args)と等価
* eachっぽい動作をするんだけど eachメソッドがあるので仕方なく別名なメソッドに対する mapとか使いたい場合に利用できる
* 主にstringの each_byteとか each_line とか

## eql?

[サンプルコード](eql%3F.rb)

* Hashのキーの同一性を確認するのに使われる模様
  * ただし hash が正しく実装されてることも重要のよう
  * hash -> eql? の順で評価して hashが違うとそこで判定終了するのかな？
  * eql?がtrue なら hashも一致することが必須,逆は満たす必要はない
* equal? > eql? > == > === の順で厳密な比較と考えられそう


## extend

[サンプルコード](extend)

* オブジェクトに特異メソッドを追加する
* 特異メソッドを外。インスタンスメソッドを中と考えると覚えやすい？

## freeze

* オブジェクトを変更できなくする
* 変更しようとすると RuntimeError が発生
* dupでコピーすればおおむね同じものが取得できる

## frozen?

* freezeされてるかどうか確認

## hash

* Hashで使用される
* さっきもかいたけど A.eql? B ならば  A.hash == B.hash は必須条件
* 一様に分布する整数になるとよいらしい

## inspect

* p メソッドが出力する際に文字列を作成する際に使用するメソッド

## instance_of

[サンプルコード](instance_of.rb)

* そのクラスのインスタンスかどうか
* is_aや kind_of より厳密と考えるとよい

## instance_variable_defined?

[サンプルコード](instance_variable.rb)

* インスタンス変数が定義されているかどうか
* 文字列でもシンボルでも

## instance_variable_get

[サンプルコード](instance_variable.rb)

* インスタンス変数を取得

## instance_variable_set

[サンプルコード](instance_variable.rb)

* インスタンス変数を設定

## instance_variables

[サンプルコード](instance_variable.rb)

* インスタンス変数の一覧を取得

## is_a, kind_of

[サンプルコード](instance_of.rb)

* そのクラスの子クラス だったり include されていると trueを返す

## method

[サンプルコード](method.rb)

* 引数に渡した名前の Method オブジェクトが返ります
* MethodはProcと違ってレシーバもラップされてるようです。

## methods

[サンプルコード](methods.rb)

* オブジェクトのpublic protected なメソッドの一覧を返す
* 引数にfalseを渡すと 特異メソッドのみ取得
  * デフォルトはtrue

## nil?

* オブジェクトがnilかどうか確認

## object_id

* __id__ と等価

## private_methods

[サンプルコード](methods.rb)

* privateなメソッドの一覧
* 引数にfalseで 継承したメソッドは返さない


## protected_methods

[サンプルコード](methods.rb)

* protectedなメソッドの(ry
* 引数にfalseで 継承したメソッドは返さない

## public_method

[サンプルコード](method.rb)

* methodと同じ。publicなメソッドしか取得できない

## public_send

* sendと同じだけどpublicメソッドしかよべない

## respond_to?

* メソッドがもつかどうか確認する
* respond_to_missing?が正しく実装されていれば method_missingで処理しているものでもtrueを返す

## respond_to_missing?

* method_missingで処理しているメソッドであればtrueを返す

## singleton_class

[サンプルコード](singleton_class.rb)

* オブジェクトの特異クラスを返す
* 特異クラスは特異メソッドが定義されてるクラスと言える

## singleton_methods

[サンプルコード](singleton_class.rb)

* 特異メソッドの一覧

## taint

* 汚染マークをつける
* セキュリティモデルを上げるとオブジェクトにできることに制限がかかる

## tainted?

* 汚染マークがついてるかどうか

## tap

[サンプルコード](tap.rb)
* メソッドチェーンの間に何か挟みたいときに。

## to_s

* 文字列に変換

## trust

* untrustマークととりぞく
* trustってなんなん？

## untaint

* 汚染マークをとりのぞく
* セキュリティモデルが3以上だとSecurityErrorが発生

## untrust

* untrustマークをつける

## untrusted?

* untrustマークがついてるかどうか

# 気づいた点

* _dump がない。要確認
* marshal_dump,marshal_loadもない。
* 1.9では equal? は含まれないメソッドっぽい
* <=> メソッドがあるが、ドキュメントにない。
* initialize_clone, initialize_dup メソッドがあるがドキュメントがない
* public_methodがあるがドキュメントがない
* to_なんとかメソッドは結構未定義
* trustはマジでなに？(セキュリティ系っぽい)
