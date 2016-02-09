require "minitest/autorun"
require "./lib/node"
require "pry"

class NodeTest < Minitest::Test
  def test_node_class_exists
    assert Node
  end

  def test_node_initializes_with_given_data
    node = Node.new("pizza")

    assert_equal "pizza", node.data
  end

  def test_node_initializes_with_a_nil_link
    node = Node.new("pizza")

    assert_equal nil, node.link
  end

  def test_node_can_link_to_another_node
    node1 = Node.new("first")
    node2 = Node.new("second")
    node1.append(node2)#telling node1 to point to node2

    assert_equal node2, node1.link#node 1 links to node2
  end
end
