

# graphs are represented by an array of N
# node objectrs, each with a label, a set of neighbors, and 
# a color 
require 'set'
class Node
  attr_accessor :label, :color, :neighbors
  def initialize(label,color = nil)
    @label, @color = label, color
    @neighbors=Set.new
  end 
end 

a = Node.new("a")
b = Node.new("b")
c = Node.new("c")

a.neighbors << b 
a.neighbors << c 
c.neighbors << a
b.neighbors << a 
b.neighbors << c 
c.neighbors << b 

graph = [a,b,c]

# Given an undirected graph with max degree D
# find a graph coloring using at most D+ 1 color 

# 1. make a colors array consists number from 0..D
# 2. do a BFS using queue to color each graph node
# 3. iterate through colors and find one color that's not used 
# by any neighbor node to color curr 
def coloring(graph,degree)
  colors = (0..degree).to_a
  queue = [graph.first]
  visited = Set.new
  until queue.empty? 
    curr = queue.shift 
    visited << curr 
    neighbor_colors = Set.new
    curr.neighbors.each do |neighbor|
      neighbor_colors << neighbor.color if neighbor.color 
    end 
    colors.each do |c|
      unless neighbor_colors.include?(c)
        curr.color = c
        break
      end 
    end 
    curr.neighbors.each do |neighbor|
      queue.push(neighbor) unless visited.include?(neighbor)
    end 
    
  end 
end 

p coloring(graph,2)
graph.each do |node|
  p node.color
end 
















