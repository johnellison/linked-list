require 'minitest/autorun'
require_relative 'stack'
require_relative 'linked_list_node'
require_relative 'helper_methods'

class TestLinkedListOne < MiniTest::Test
  def setup_nodes
    @node1 = LinkedListNode.new(37)
    @node2 = LinkedListNode.new(99, @node1)
    @node3 = LinkedListNode.new(12, @node2)
  end

  def test_initialize_values
    setup_nodes

    assert_equal @node1.value, 37
    assert_equal @node2.value, 99
    assert_equal @node3.value, 12
    assert @node1.next_node.nil?
  end

  def test_print_values
    setup_nodes

    expected = '12 --> 99 --> 37 --> nil'

    print_values(@node3)
  end

  def test_reverse_list
    setup_nodes

    expected = '37 --> 99 --> 12 --> nil'

    reversed = reverse_list(@node3)

    print_values(reversed)
  end

end