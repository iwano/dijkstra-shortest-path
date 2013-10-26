require 'rspec'
require './lib/dijkstra_shortest_path'
require './lib/axis'
require './lib/graph'
require './lib/node'

describe DijkstraShortestPath do
  describe '#execute' do
    context 'with the following graph' do
     #https://a248.e.akamai.net/camo.github.com/ecb8c658d47175b7d4e181a7c63da7858803b059/687474703a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f352f35372f44696a6b737472615f416e696d6174696f6e2e676966 

      n1 = Node.new('Node 1')
      n2 = Node.new('Node 2')
      n3 = Node.new('Node 3')
      n4 = Node.new('Node 4')
      n5 = Node.new('Node 5')
      n6 = Node.new('Node 6')

      n1.add_neighbour Axis.new(n2, 7)
      n1.add_neighbour Axis.new(n3, 9)
      n1.add_neighbour Axis.new(n6, 14)
      n2.add_neighbour Axis.new(n1, 7)
      n2.add_neighbour Axis.new(n3, 10)
      n2.add_neighbour Axis.new(n4, 15)
      n3.add_neighbour Axis.new(n1, 9)
      n3.add_neighbour Axis.new(n6, 2)
      n3.add_neighbour Axis.new(n2, 10)
      n4.add_neighbour Axis.new(n2, 15)
      n4.add_neighbour Axis.new(n3, 11)
      n4.add_neighbour Axis.new(n5, 6)
      n5.add_neighbour Axis.new(n4, 6)
      n5.add_neighbour Axis.new(n6, 9)
      n6.add_neighbour Axis.new(n5, 9)
      n6.add_neighbour Axis.new(n1, 14)

      graph = Graph.new [n1, n2, n3, n4, n5, n6]

      let(:shortest_path) { DijkstraShortestPath.new graph }

      it 'returns 2,3,6,5' do
        shortest_path.execute.should eq [2,3,6,5]
      end
    end
  end
end
