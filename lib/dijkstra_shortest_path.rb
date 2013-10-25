class DijkstraShortestPath
  require 'pry'
  attr_reader :graph

  def initialize(graph)
    @graph = graph
    @unvisited = graph.nodes
  end

  def execute
    node = @graph.nodes.first
    node.value = 0
    node.current = true
    remove_node node
    check_closest_neighbour node
  end

  private

  def remove_node(node)
    if node.class == 'Array'
      @unvisited.delete(node[0])
    else
      @unvisited.delete(node)
    end
  end

  def check_closest_neighbour(node)
    node.neighbours.each do |nnode|
      nnode[1] = node.value + nnode[1] if node_unvisited? nnode
    end
    min = node.neighbours.map { |n| [n[0].name, n[1]] }.min
    next_node = @unvisited.select{ |n| n.name == min[0]}
    remove_node next_node
    go_to min
    check_closest_neighbour next_node[0]
  end

  def go_to(node)
    p "Move to node #{node[0]}"
  end

  def node_unvisited?(node)
    @unvisited.any?{ |n| n.name == node[0].name}
  end
end
