module Hoge
  module Mogu
    module Goro
      Module.nesting              # => [Hoge::Mogu::Goro, Hoge::Mogu, Hoge]

      def goro
        Module.nesting
      end
    end
  end
end


class Moku
  include Hoge::Mogu::Goro
end

# include しても変化しません。
Moku.new.goro                   # => [Hoge::Mogu::Goro, Hoge::Mogu, Hoge]
