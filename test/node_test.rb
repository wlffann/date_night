gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/binary_search_tree'
require '../lib/node'
require 'pry'

class NodeTest < Minitest::Test

    def test_it_exsists
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        
        assert(bst.base)
    end

    def test_it_has_left
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        # binding.pry
        assert_equal 16, bst.base.left.rating
    end

    def test_it_has_three_levels
        # skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        bst.insert(50, "Hannibal Buress: Animal Furnace")
        binding.pry

        assert_equal 50, bst.base.left.right.rating

    end

end