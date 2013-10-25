class Node
  attr_accessor :name, :visited, :current

  def initialize(name)
    @name = name
    @visited = false
  end

  def visited?
    visited
  end

  def current?
    current
  end
end
