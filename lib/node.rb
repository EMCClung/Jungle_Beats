class Node
  attr_reader :data, :link

  def initialize(data)
    @data = data
    @link = nil
  end

  def append(other_node)#refer to line 21
    @link = other_node
  end
end
