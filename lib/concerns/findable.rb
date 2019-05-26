module Findable
  # CLASS METHODS
  def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end
end
