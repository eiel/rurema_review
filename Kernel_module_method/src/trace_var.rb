# -*- coding: utf-8 -*-
trace_var(:$hoge) { |n| puts "$hogeが #{n}に変更された" }
$hoge = "mogu"
untrace_var(:$hoge)
$hoge = "goro"
# 二度目はでない
# >> $hogeが moguに変更された
