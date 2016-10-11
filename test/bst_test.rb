gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'binary_search_tree'

class BianarySearchTreeTest < Minitest::Test

    def test_it_exsists
        assert(BinarySearchTree.new)
    end

    def test_insert_when_base_is_nil
        bst = BinarySearchTree.new
        assert_equal 0, bst.insert(61, "Bill & Ted's Excellent Adventure")
    end

    def test_insert_at_level_two
        # skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        response = bst.insert(16, "Johnny English")

        assert_equal 1, response
    end

    def test_insert_another_at_level_two
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        response = bst.insert(92, "Sharknado 3")
        
        assert_equal 1, response
    end

    def test_that_value_already_present
        skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        assert_equal "Value is already present.", bst.insert(61, "Bill & Ted's Excellent Adventure")
    end

    def test_inserting_at_level_three_on_left
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        response = bst.insert(50, "Hannibal Buress: Animal Furnace")
        
        assert_equal 2, response
    end

    def test_inserting_at_level_three_on_right
    bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        bst.insert(50, "Hannibal Buress: Animal Furnace")
        response = bst.insert(63, "Meet My Valentine")
        
        assert_equal 2, response
    end


end