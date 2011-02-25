class Tree
  attr_accessor :children, :node_name
  def initialize(tree)
    tree.each_pair do |key,value|
      @node_name = key
      @children = value
    end
  end

  def visit_all(&block)
    visit &block
    children.each_pair do|key, value|
      sub_tree = Tree.new(key=>value)
      sub_tree.visit_all &block
    end
  end

  def visit(&block)
    block.call self
  end
end

tree = {"grandpa" => {"dad" => {"child_1" => {},
  "child_2" => {}},
  "uncle" => {"child_3" => {},
  "child_4" => {}}
  }
}
ruby_tree = Tree.new(tree)

#ruby_tree = Tree.new( "Ruby" ,[Tree.new("Reia" ),Tree.new("MacRuby" )])
puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
#
#puts
puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}