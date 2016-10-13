require 'pry'
require_relative 'node'

class BinarySearchTree

    attr_reader :base, :base_level

    def initialize
        @base = nil
        @base_level = 0
    end

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
    end

    def include?(rating)
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

    def depth_of?(rating)
        if rating > base.rating
            base.right.depth_of?(rating)
        elsif rating < base.rating
            base.left.depth_of?(rating)
        else
            base_level
        end
    end

    def max
        @base.max
    end

    def min
        @base.min
    end

    def sort
    end

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

