require 'pry'
require_relative 'node'

class BinarySearchTree

    attr_reader :base, :base_level

    def initialize
        @base = nil
        @base_level = 0
    end

    #insert passed in data to tree
    def insert(rating, name)
        if base
            if rating < base.rating
                @base.insert_left(rating, name)
                level = @base.depth_of?(rating) - 1       
            else 
                @base.insert_right(rating, name)
                level = @base.depth_of?(rating) - 1
            end
        else
            @base = Node.new(rating, name)
            base_level
        end
        # binding.pry
    end

    #check to see if data passed in is already in tree
    def include?(rating)
        # binding.pry
        if base 
            if rating > base.rating
                if base.right
                    base.right.include?(rating)
                else
                    false
                end
            elsif rating < base.rating 
                if base.left
                    base.left.include?(rating)
                else
                    false
                end
            else
                true
            end
        else
            false
        end 
    end

    def compare(rating)
        if rating > base.rating
            base.right
        else
            base.left
        end
    end

    #find the data in the array and calculate its depth in the tree
    def depth_of?(rating)
        if rating > base.rating
            base.right.depth_of?(rating)
        elsif rating < base.rating
            base.left.depth_of?(rating)
        else
            base_level
        end
    end

    #return the largest number in the tree
    def max
        @base.max
    end

    #return the smallest number in the tree
    def min
        @base.min
    end

    #return a list of the data sorted by number
    def sort
        
    end

    #load a .txt file into the tree
    def load(file_path)
        loaded_file = read(file_path)
        loaded_file = convert(loaded_file)
        loaded_file.each do |line|
            self.insert(line[0], line[1])
        end
        loaded_file.count
    end

    def convert(loaded_file)
        loaded_file.each do |line|
            line[0] = line[0].to_i
            line[1] = line[1].chomp.lstrip
        end
    end

    def read(file_path)
        File.readlines(file_path).map do |line|
            line.split(",")
        end
    end

    #determine the the number of child nodes at a given level
    def health
    end

end

