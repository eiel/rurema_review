確認時の環境

    $ ruby -v

    ruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-darwin11.4.1]

# Kernel モジュールメソッド

http://rurema.clear-code.com/1.9.3/class/Kernel.html

組込み関数のように見えるメソッド。どこでも使える

## Array

- 配列にする
- to_ary to_a の順番に呼びだし、反応があるほうを返す

[サンプルコード](src/array.rb)

to_aryは配列への暗黙的変換があるときに呼ばれるらしい

## Complex

- 複素数オブジェクトを作る
- 数値か 複素数を表現した文字列を渡す
- Complexはnewは使えない

[サンプルコード](src/complex.rb)

## Float

- 引数をFloatオブジェクトに変換
- 文字列の場合はFloatっぽいものであれば変換できる
- String#to_f を使用した場合と違いは、より厳密で失敗した場合は例外が発生する

[サンプルコード](src/float.rb)

## Integer

- 引数をFixnumかBignumに変換
- 文字列の場合は接頭辞をみて進数を判断して変換
- それ以外のオブジェクトは to_int, to_iが呼ばれる

[サンプルコード](src/integer.rb)


## Rational

- 有理数を表現するオブジェクトに変換(Rational)
- 有理数 分数で表せれる数字
- 複素数も使える(あれ？）-> 結果のクラスは複素数だった

[サンプルコード](src/rational.rb)

## String

- 文字列に変換する
- とりたててなにもないね…

## __method__, __callee__

- メソッド名をシンボル返す
- トップレベルで使うと nilが返る

[サンプルコード](src/method.rb)

## `(バッククオート)

- 外部コマンドを実行
- ダブルクオートと同様に式展開ができる
- Kernel.systemとの違いは出力が戻り値になる
- $? で終了ステータスが取得できる

[サンプルコード](src/backquote)

## abort

- メッセージつきでプログラムを終了
- ステータスは1固定

## at_exit

- プログラムが終了時に実行する処理をかける

[サンプルコード](src/at_exit.rb)

## autoload

- 第一引数に渡したシンボルの定数をはじめて使うときに
- 第2引数のファイルをよみこむ
- ネストしてるところは Module.autoloadとくみあわせる
- railsのコードとかみててもよくでてくる

[サンプルコード](src/autoload.rb)

## autoload?

- autoloadされてるか確認する
- 第1引数はシンボル
- している場合はnil
- していない場合はよみこむファイル名

[サンプルコード](src/autoload2.rb)

## binding

- 環境情報をもったオブジェクトを返す
- おおむねevalするために使う

[サンプルコード](src/binding.rb)

## block_given?, itereator?

- メソッドにブロックが与えられてるかどうか
- iterator?は非推奨

[サンプルコード](src/block_given.rb)

## caller

- 呼び出し元の情報をとりだす。

[サンプルコード](src/caller.rb)

## catch

- 他言語の例外処理と勘違いしないように
- 脱出のgotoの代わりに

[サンプルコード](src/catch.rb)

## eval

- 文字列をrubyのプログラムとして評価する
- evalする前に用意しておいた変数に代入すればblockと同様のスコープでevalで評価した結果も外に持ちだせる

[サンプルコード](src/eval.rb)

## exec

- 引数で指定されたコマンドを実行
- rubyには返ってこれない

## exit

- SystemExit 例外を発生させることで終了するので補足できる

[サンプルコード](src/exit.rb)

## exit!

- exitみたいに例外を投げない

## raise

- 例外を発生させる
- $! に発生させた例外が格納される


## fork

- システムコールをつかってプロセスを複製

## sprintf,format

- まあ,sprintfです。

## gets

- ARGFから一行よみこみます。
- ARGFはARGVに格納された文字列をファイル名としてよみこむ。
- ARGF自体が空の場合標準入力をよみにいくので。

[サンプルコード](src/gets.rb)

## global_variables

- 定義されてるグローバル変数を取得

## proc, lambda

- Procオブジェクトを作ります。
- Proc.newとは少し違う

## load

- rubyのファイルを読込みする
- requireは一度しかよみこまないけど loadは再読込します
- LOAD_PATHの影響をうけます。
- .rb や .so は省略できない

## local_variables

- ローカル変数の一覧を返す

## loop

- 無限ループがつくれる
- breakで中断

## open

- ファイルを開きます

## p

- 人間に読み易い形で出力する
- Object#inspectを使用して整形する

[サンプルコード](scr/p.rb)

## print

- to_s を使用して出力する
- $, $\ などで挙動を変更できる
- 引数を指定しなければ $_ が出力される

## printf

- まあprintfだ。

## putc

- 1文字出力
- 文字列を渡すと一文字目のみ
- 数値を渡すと対応する文字を。

## puts

- 改行をつけて出力
- 改行がついてると改行を付加しない

## rand

- 基本は 0以上 1未満の値を返す
- 1以上の値を渡せば 渡した値を最大値に整数を返す
- srandは自動的に呼ばれる

[サンプルコード](rand.rb)

## readlines

- getsを使ってEOFまでよむ
- なので同様にANGFからよむ
- 読んだ結果を配列にして返す

## require

- 一度だけよみこむ
- $" に読み込んだものが記録される
- 拡張子は不要

[サンプルコード](src/require.rb)

## require_relative

- LOAD_PATHにカレントディレクトリに含まれないから追加された？
- irb内とかだとうまくうごかない<br>
  http://d.hatena.ne.jp/tagomoris/20100924/1285322426

## select

- IO.select
- ちゃんとみてない

## set_trace_func

- うまく使えばいろいろ遊べそう
- debug, tracer, prfileにはこれをつかっているらしい
- ブロックは渡せない？

[サンプルコード](src/set_trace_func.rb)

## spawn

- まー、spown…

## srand

- 乱数の初期設定
- 同じ乱数を作成したいなら指定。
- 戻り値には古いseedがはいってる
- 基本自動設定

[サンプルコード](src/srand.rb)

## syscall

- システムコールの実行。
- 省略

## system

- コマンドの実行
- 戻り値は成功か失敗か

## test

- ファイルの状態を確認できる

[サンプルコード](src/test.rb)

## throw

- catchでみたので省略

## trace_var

- $ではじまる変数へ代入するたびに実行する処理を登録できる
- untrace_varで解除できる

[サンプルコード](src/trace_var.rb)

## trap

- シグナルによる割り込みの処理を登録する

## untrace_var

- 引数を指定して必要なものだけはずせる

## warn

- stderrに出力
- $VERBOSフラグがnilな出力されない
- xmpからだとど出そうにないので $stderrに STDOUTを設定してみた

[サンプルコード](src/warn.rb)

# 発見したこと

- readlineってgetsのエイリアスのように見える
- http://rurema.clear-code.com/1.9.3/method/Kernel/m/require_relative.htmlの requireと loadのスコープは requireとかloadとかでも表示されたほうが良い気が。
- set_tarce_funcはブロックが渡せない気がする
- spawnが2行ある
- systemも2行ある
- testも2行ある
- testにサンプルコードがない
- testにsee alsoがない(Fileとかにありそうだけど)

# あると便利そうなこと

コミットIDがどのブランチの中にあるか確認する方法
