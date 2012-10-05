確認時の環境

    $ ruby -v

    ruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-darwin11.4.1]

# Module

http://rurema.clear-code.com/1.9.3/class/Module.html


# 特異メソッド

Module を直接レシーバにして呼べるメソッド

## constants

[サンプルコード](constants.rb)

* 参照可能な定数名の配列を返す
* スコープによってちゃんと動作が変わる
* なんかきもかったけど下記のnestingと同じところにいるのでなんかおちついてきた

## nesting

[サンプルコード](nesting.rb)

* モジュールのネスト情報を返す。
* 使いどころが受かばない。

## new

[サンプルコード](new.rb)

* 無名なモジュールを作る
* 定数に bind すると名前がつく

# インスタンスメソッド

文章でかくとややこしいけど、Moduleのインスタンスなので、

    Kenrnel.なんとか

みたいにモジュールやクラスのインスタンスの共通特異メソッドみたいなものになる Class は Module の子クラスなのでメソッドは継承されてるので同様に使えます。オブジェクト指向の概念の外から見てる気持ちに?

メソッドは38個あるそうな。

## <

[サンプルコード](<.rb)

* そのModuleをインクルードしてるかどうか判定する
* 継承関係のイメージで考えるほうがわかりやすい
* 無関係だと nil が返る。すこし

## <=

[サンプルコード](<=.rb)

* お察しのとおりです。
* 同じものだと true が返るやうです。

## <=>

* (ry

## ===

[サンプルコード](===.rb)

* 有名?
* 指定したオブジェクトの サブクラスか同じクラス もしくは サブクラス、インクルード されていれば。
* 比較対象のレイヤーが違うので注意
* case で使われるので、おいしい。

## <

* (ry

## <=

* (ry

## ansestors

* 継承しているクラス、インクルードしているモジュールを優先順位順に返す
* 呼ばれるメソッドがどのクラスのものか調べるのに役立つ
* pry 使えば直接よぶことはないけども。

## autoload

* 特定の定数をはじめ参照するときに require するファイルを指定できる
* kernel.autolod ではネストしたところをよみこめないので必要

## autoload?

* 定数がよまれてない場合はそのパス名を返す
* ロード済みなら nil を返す
* オートロードされるかどうか？と読む?

## module_eval, module_exec

[サンプルコード](module_eval)

* module の コンテキスト でevalできる。

## class_variable_defined?

[サンプルコード](class_variable)

* クラス変数が存在する場合 true を返す
* クラス変数自体使う機会が…

## class_variables

[サンプルコード](class_variable)

* クラス変数の一覧を取得
* クラス変数自体(ry

## const_defined?

[サンプルコード](const.rb)

* 定数定義されているかどうか

## const_missing

[サンプルコーデ](cost_missing.rb)

* 定数がみつからなかった場合実行される

## const_set

[サンプルコード](const.rb)

* 定数を定義できる


## constants

[サンプルコード](const.rb)

* 引数で継承したものもふくめなくしたりできる

## include?

[サンプルコード](include.rb)

* モジュールがインクルードされてるかどうか

## included_module

[サンプルコード](include.rb)

* インクルードされてるモジュールの一覧

## instance_method

[サンプルコード](instance_method.rb)

* インスタンスメソッドをオブジェクト化した UnboundMethodを返す
* 使うにはオブジェクトにバインドする必要がある

## instance_methods

[サンプルコード](instance_methods.rb)

* こちらはシンポルを返す

## method_defined?

[サンプルコード](method_defined.rb)

* シンボルでも文字列でも

## name

[サンプルコード](name.rb)

* to_s も同じ挙動する
* ネストしてると :: もついてる

## private_class_method

[サンプルコード](private_class_method.rb)

* 名前が少しまぎらわしい？
* クラスメソッドを private にする

## private_instance_methods

* 非公開メソッドの一覧を取得

## private_method_defined?

* instanceがつかないようです。

## protected_instance_methods

* protetcted なメソッド一覧を取得

## protected_method_method?

* protected なメソッドが定義されてるか確認

## public_class_method

[サンプルコード](private_class_method.rb)

* private と対照に
* クラスメソッドを private にする

## public_instance_methods

* public メソッドの一覧を取得

## public_method_defined?

* public インスタンスメソッドに定義されてるかどうか

# インスタンスメソッド (プライベート)

プライベートっていうと不思議な感じがするけど、module とか class の定義中で呼べるメソッド。便利なものが多い? 

## alias_method

[サンプルコード](alias_method.rb)

* メソッドの別名をつくります
* 前が新しく追加する名前
* 後ろがもともとある名前
* 逆のほうがおちつくのは慣れてないからかしら

## append_features


[サンプルコード](append_features.rb)

* 引数を指定した module に メソッドを追加
* includeの逆向き

## attr

[サンプルコード](attr.rb)

* インスタンス変数へのアクセッサを提供する
* 第二引数を true でセッターも
* 第2引数はobsoleted でした

## attr_accessor

[サンプルコード](attr.rb)

* インスタンス変数のセッターとゲッターを提供する

## attr_reader

[サンプルコード](attr.rb)

* インスタンス変数のゲッターだけ提供する

## attr_writer

[サンプルコード](attr.rb)

* インスタンス変数のセッターだけ提供する
* attr_writer だけ使う場面って微妙に気になる

## module_exec

[サンプルコード](module_exec.rb)

* プライベートじゃなくね？

## class_variable_get

[サンプルコード](class_variables.rb)

* プライベートじゃなくね？
* @@ではじまる変数

## class_variable_set

[サンプルコード](class_variables.rb)

* プライベートじゃなくね？
* @@ではじまる変数

## define_method

[サンプルコード](define_method.rb)

* 動的にメソッド定義したいときに

## extend_object

[サンプルコード](extend_object.rb)

* 引数へ extendする

## extended

[サンプルコード](extended.rb)

* extend した際によばれるそうな
* overrideして使う

## include

* 一番最初に説明しなきゃいけないけども。
* includeしたモジュールのメソッドが使えるようになります

## included

[サンプルコード](included.rb)

* includedされたときによばれるそうな
* overrideして使う

## method_added

[サンプルコード](method_added.rb)

> メソッド name が追加された時にインタプリタがこのメソッドを呼び出します。

* 日本語がすこし変ね?
* メソッドを追加されたときに呼ばれる

## method_removed

[サンプルコード](method_removed.rb)

* メソッドが削除されたときに呼ばれるそうな
* メソッドを削除するには remove_method が使えます
* overrideして使う

## method_undefined

[サンプルコード](method_undefined.rb)

* メソッドが未定義されたときに呼ばれるそうな
* メソッドを未定義にするには undef 文 が使える
* メソッドを未定義にするには undef_method も使える
* overrideして使う

## module_function

[サンプルコード](module_function.rb)

* メソッドをモジュール関数にする

## private, pubilc, protected

* 言語仕様っぽく見えるメソッド
* 引数に渡すと メソッドの公開、非公開を変更できる
* ない場合は このメソッド以降に定義したメソッドが非公開、公開になったり

## public_constant

* 定数を公開にできる

## private_constant

* 定数を非公開にできる

## remove_class_variable

* クラス変数を削除できる

## remove_const

* 定数を削除できる
* セキュリティレベル次第では失敗するそうな

## remove_method

* メソッドを削除できる

## undef_method

* メソッドを未定義にできる
* 未定義の場合はスーパクラスにあっても呼び出せなくなる
* remove はチェーンを辿れるけど undef はそうじゃない

# きづきとか

* attrの第2引数はobsoleted いつからだろう
* module_exec は public
* class_varibale\_get, class\_variable\_set は public
