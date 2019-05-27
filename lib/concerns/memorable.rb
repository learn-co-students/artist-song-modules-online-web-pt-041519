module Memorable #name of module
  module ClassMethods #class or instance method? in this case class method
    def reset_all
      all.clear
    end

    def count
      all.count
    end
  end
end
