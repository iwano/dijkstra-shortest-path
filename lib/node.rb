class Node
  attr_accessor :visited, :current, :value
  attr_reader :neighbours, :name

  def initialize(name, neighbours=[])
    @name       = name
    @visited    = false
    @value      = +1.0/0.0
    @neighbours = neighbours
  end

  def visited?
    visited
  end

  def current?
    current
  end

  def add_neighbour(neighbour, value)
    @neighbours << [neighbour, value]
  end
end
