class DijkstraShortestPath
  require 'pry'
  attr_reader :graph

  def initialize(graph, destination)
    @graph         = graph
    @unvisited     = graph.nodes
    @shortest_path = []
    @destination   = destination
  end

  def execute
    node = @graph.nodes.first #takes the first node as the starting point
    node.value = 0
    node.current = true
    remove_node node
    check_closest_neighbour node
  end

  private

  def remove_node(node)
    @unvisited.delete node
  end

  def check_closest_neighbour(node)
    node.neighbours.each do |nnode|
      nnode.node.value = node.value + nnode.value if node_unvisited? nnode.node
    end
    min = node.neighbours.map { |n| n.node.value }.min
    next_node = @unvisited.select{ |n| n.value == min }.first
    remove_node next_node
    node.reset_value
    go_to next_node.name
    if arrived_to_destination? next_node
     @shortest_path
    else
      check_closest_neighbour next_node
    end
  end

  def go_to(node)
    add_to_path node
    p "Move to node #{node}"
  end

  def node_unvisited?(node)
    @unvisited.any?{ |n| n.name == node.name}
  end

  def add_to_path(node)
    @shortest_path << node
  end

  def arrived_to_destination?(node)
   @destination === node
  end
end
