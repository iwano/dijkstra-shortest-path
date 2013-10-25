class DijkstraShortestPath
  require 'pry'
  attr_reader :graph

  def initialize(graph)
    @graph = graph
    @unvisited = graph.nodes
  end

  def execute
    @graph.nodes.each do |node|
      node.value = 0
      node.current = true
      remove_node node
      check_closest_neighbour node
    end
  end

  private

  def remove_node(node)
    binding.pry
    @unvisited.delete node
  end

  def check_closest_neighbour(node)
    node.neighbours.each do |nnode|
      nnode[1] = node.value + nnode[1] if node_unvisited? nnode
    end
    min = node.neighbours.map { |n| [n[0].name, n[1]] }.min
    remove_node @unvisited.select{ |n| n.name == min[0]}
    go_to min
  end

  def go_to(node)
    p "Move to node #{node[0]}"
  end

  def node_unvisited?(node)
    @unvisited.any?{ |n| n.name == node[0].name}
  end
end
