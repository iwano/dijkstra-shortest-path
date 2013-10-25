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
      remove_current node
      node.neighbours.each do |nnode|
      end
    end
  end

  private

  def remove_current(node)
    @unvisited.delete node
  end
end
