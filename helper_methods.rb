def print_values(list_node)
  print "#{list_node.value} --> "

  if list_node.next_node.nil?
    print 'nil'
    return
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list)
  # 

  while list
    # 
    list = list.next_node
  end

  # 
end