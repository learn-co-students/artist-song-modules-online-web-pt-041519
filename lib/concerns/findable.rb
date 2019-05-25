module Findable
   module ClassMethods
      def find_by_name(name)
         self.all.detect{|class_variable| class_variable.name == name}
      end
   end
end