gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/binary_search_tree'
require 'pry'

class BianarySearchTreeTest < Minitest::Test

    def test_it_exsists
        assert(BinarySearchTree.new)
    end

    def test_insert_when_base_is_nil
        # skip
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
        # skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        response = bst.insert(92, "Sharknado 3")
        
        assert_equal 1, response
    end

    def test_inserting_at_level_three_on_left
        # skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        response = bst.insert(50, "Hannibal Buress: Animal Furnace")
        
        assert_equal 2, response
    end

    def test_inserting_at_level_three_on_right
        # skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        bst.insert(50, "Hannibal Buress: Animal Furnace")
        response = bst.insert(63, "Meet My Valentine")
        
        assert_equal 2, response
    end

    def test_inserting_at_right_level
        # skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        bst.insert(50, "Hannibal Buress: Animal Furnace")
        bst.insert(63, "Meet My Valentine")
        bst.insert(55, "Experimenter")
        bst.insert(75, "French Dirty")
        bst.insert(11, "Love")
        result = bst.insert(7, "I Love You Phillip Morris")

        assert_equal 3, result
    end


    def test_if_ratings_are_already_included
        # skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        assert(bst.include?(61))
        refute(bst.include?(62))
    end

    def test_if_rating_included_lower_in_tree
        # skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        bst.insert(50, "Hannibal Buress: Animal Furnace")
        bst.insert(63, "Meet My Valentine")

        assert(bst.include?(16))
        assert(bst.include?(63))
        assert(bst.include?(50))
    end

    def test_depth_of_rating_in_tree_with_one_level
        # skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")

        result = bst.depth_of?(61)
        assert_equal 0, result
    end

    def test_depth_of_rating_in_tree_with_multiple_levels
        # skip
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        bst.insert(50, "Hannibal Buress: Animal Furnace")
        bst.insert(63, "Meet My Valentine")
        bst.insert(55, "Experimenter")
        bst.insert(75, "French Dirty")
        bst.insert(11, "Love")
        bst.insert(7, "I Love You Phillip Morris")
        # binding.pry
        result_1 = bst.depth_of?(50)
        assert_equal 2, result_1

        result_2 = bst.depth_of?(14)
        # assert_equal nil, result_2
    end

    def test_finding_max_value_in_short_tree
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        result = bst.max

        assert_equal 92, result
    end

    def test_finding_max_value_in_tall_tree
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        bst.insert(50, "Hannibal Buress: Animal Furnace")
        bst.insert(63, "Meet My Valentine")
        bst.insert(55, "Experimenter")
        bst.insert(75, "French Dirty")
        bst.insert(11, "Love")
        bst.insert(7, "I Love You Phillip Morris")
        result = bst.max

        assert_equal 92, result
    end

    def test_finding_min_value_in_short_tree
        bst = BinarySearchTree.new
        bst.insert(61, "Bill & Ted's Excellent Adventure")
        bst.insert(16, "Johnny English")
        bst.insert(92, "Sharknado 3")
        result = bst.min

        assert_equal 16, result
    end

end