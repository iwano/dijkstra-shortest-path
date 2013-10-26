class Node
  attr_accessor :visited, :current, :value
  attr_reader :neighbours, :name

  def initialize(name, neighbours=[])
    @name       = name
    @visited    = false
    @value      = reset_value
    @neighbours = neighbours
  end

  def visited?
    visited
  end

  def current?
    current
  end

  def add_neighbour(axis)
    @neighbours << axis
  end

  def reset_value
    self.value = +1.0/0.0
  end
end
