module Findable
  module InstanceMethods
  end

  module ClassMethods

    def find_by_name(name)
      self.detect{|a| a.name == name}
    end
  end

end