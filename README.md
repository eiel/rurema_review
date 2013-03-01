> ときどきリファレンスをみなおすのって重要だよね

ということで。

[るりま](http://rurema.clear-code.com/1.9.3/library/_builtin.html)でもみながら標準ライブラリのメソッドでも見てまわってメモでものこしてみる。


* まずは組み込み関数っぽく動くKernelのモジュールメソッドあたりを<br>
  [Kernel ModuleMethod](https://github.com/eiel/rurema_review/blob/master/Kernel_module_method/memo.md)
* 二回目はすべてのObjectで使えるメソッドであるBasicObject<br>
  [BasickObject InstanceMethod](https://github.com/eiel/rurema_review/blob/master/BasicObject_instance_method/index.md)
* BasicObjectだけではすくないのでその他のObjectのインスタンスメソッドとなるKernelのインスタンスメソッド<br>
  [Kernel InstanceMethod](https://github.com/eiel/rurema_review/blob/master/Kernel_instance_method/index.md)

* ちょっとメタな機能が多い Module クラス<br>
  [Module](https://github.com/eiel/rurema_review/blob/master/Module/index.md)

* Moduleをやったので Class クラス<br>
  [Class](https://github.com/eiel/rurema_review/blob/master/Module/index.md)

* 範囲を表現する Rangeクラス<br>
  [Range](https://github.com/eiel/rurema_review/blob/master/Module/index.md)

* ハッシュテーブルや連想配列と呼ばれるデータ構造を表現する Hash クラス<br>
  [Hash](https://github.com/eiel/rurema_review/blob/master/Hash/index.md)

* なんとなくちょっと脱線。Fiber クラス<br>
  [Fiber](https://github.com/eiel/rurema_review/blob/master/Fiber/index.md)

* 文字列となにが違うの？と言われちゃう Symbol クラス<br>
  [Symbol](https://github.com/eiel/rurema_review/blob/master/Symbol/index.md)
