require './lib/dijkstra_shortest_path'
require './lib/graph'
require './lib/node'

n1 = Node.new('Node 1')
n2 = Node.new('Node 2')
n3 = Node.new('Node 3')
n4 = Node.new('Node 4')
n5 = Node.new('Node 5')
n6 = Node.new('Node 6')

n1.add_neighbour n2, 7
n1.add_neighbour n3, 9
n1.add_neighbour n6, 14
n2.add_neighbour n1, 7
n2.add_neighbour n3, 10
n2.add_neighbour n4, 15
n3.add_neighbour n1, 9
n3.add_neighbour n6, 2
n3.add_neighbour n2, 10
n4.add_neighbour n2, 15
n4.add_neighbour n3, 11
n4.add_neighbour n5, 6
n5.add_neighbour n4, 6
n5.add_neighbour n6, 9
n6.add_neighbour n5, 9
n6.add_neighbour n1, 14

graph = Graph.new [n1, n2, n3, n4, n5, n6]

shortest_path = DijkstraShortestPath.new graph
shortest_path.execute
