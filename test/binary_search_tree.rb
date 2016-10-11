require 'pry'

class BinarySearchTree
    
    def initialize
        @base = nil
        @base_level = 0
    end

    #insert passed in data to tree
    def insert(rating, name)
        if @base != nil
            if rating < @base.rating
                @base.insert_right(rating, name)        
            else 
                @base.insert_left(rating, name)
            end
        else
            @base = Node.new(@base_level, rating, name)
            @base_level
        end
    end

    #check to see if data passed in is already in tree
    def include?
    end

    #find the data in the array and calculate its depth in the tree
    def depth_of
    end

    #return the largest number in the tree
    def max
    end

    #return the smallest number in the tree
    def min
    end

    #return a list of the data sorted by number
    def sort
    end

    #load a .txt file into the tree
    def load
    end

    #determine the the number of child nodes at a given level
    def health
    end

end

class Node 

    attr_reader :level, :rating, :name

    def initialize(x, rating, name)
        @level = x
        @rating = rating
        @name = name
        @right = nil
        @left = nil
    end

    def insert_right(rating, name)
        if @right != nil
            if rating < @right.rating
                @right.insert_right(right, name)
            else 
                @right.insert_left(right, name)
            end
        else
            @right = Node.new(@base_level + 1, rating, name)
            @right.level
        end
    end

    def insert_left(rating, name)
        if @left != nil   
            if rating < @left.rating
                @left.insert_right(right, name)
            else 
                @left.insert_left(right, name)
            end
        else
            @left = Node.new(@base_level + 1, rating, name)
            @left.level
        end
    end

end