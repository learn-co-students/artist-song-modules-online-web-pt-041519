module Paramable
  # INSTANCE METHODS
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
