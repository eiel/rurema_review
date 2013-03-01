:a <=> :b                       # => -1
:a.casecmp :b                   # => -1

:a <=> :B                       # => 1
:a.casecmp :B                   # => -1

:a <=> :a                       # => 0
:a.casecmp :a                   # => 0

# 結果が違う
:a <=> :A                       # => 1
# :a <=> :a と同じ
:a.casecmp :A                   # => 0
