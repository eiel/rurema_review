('a'..'c').cover? "b"           # => true
('a'..'c').include? "b"         # => true

('a'..'c').cover? "bace"       # => true
('a'..'c').include? "bace"     # => false
