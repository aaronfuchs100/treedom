class Tree
  attr_accessor :root

  def insert(word)
    if @root.nil?
      @root = Node.new(word)
    else
      insert_node(@root, word)
    end
  end

  def sort
    start_sort(@root)
  end

  def start_sort
    start_sort(node.prv) if node.prv
    puts node.data
    start_sort(node.nxt) if node.nxt
  end

def sort
  if @root.nil?
    []
  else
      sort_node(@root, [])
    end
end

 def sort_node(node, result)
    if !node.prv.nil?
      sort_node(node.prv, result)
    end
    
    result << node.value
    
    if !node.nxt.nil?
      sort_node(node.nxt, result)
    end
end


  def insert_node(node, value)
    if (value <= node.data) && (node.prv.nil?)
      node.prv = Node.new(value)
    elsif (value > node.data) && (node.nxt.nil?)
      node.nxt = Node.new(value)
    elsif (value <= node.data) && (node.prv)
        insert_node(node.prv, value)
    elsif (value > node.data) && (node.nxt)
        insert_node(node.nxt, value)
    end
  end
end

