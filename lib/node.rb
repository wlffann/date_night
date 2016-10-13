class Node

    attr_reader :rating, :name, :right, :left

    def initialize(rating, name)
        @rating = rating
        @name = name
    end

    def insert_right(rating, name)
        if @right
            if rating < right.rating
                right.insert_left(rating, name)
            else 
                right.insert_right(rating, name)
            end
        else
            @right = Node.new(rating, name)
        end
    end

    def insert_left(rating, name)
        if @left   
            if rating < left.rating
                @left.insert_left(rating, name)
            else 
                @left.insert_right(rating, name)
            end
        else
            @left = Node.new(rating, name)
        end
    end

    def include?(rating)
        score = self.search(rating)
        if score
            true
        else
            false
        end
    end

    def search(rating)
        if self.rating == rating
            return rating
        else
            top_node = self
            until  top_node == nil || rating == top_node.rating 
                if rating > top_node.rating
                    top_node = top_node.right
                else
                    top_node = top_node.left
                end
            end
            top_node
        end
    end

    def depth_of?(rating)
        counter = 1
        top_node = self
        until top_node == nil || rating == top_node.rating
            counter += 1
            if rating > top_node.rating
                top_node = top_node.right
            else
                top_node = top_node.left
            end
        end
        counter
    end

    def max
        top_node = self
        until top_node.right == nil
            top_node = top_node.right
        end
        top_node.rating
    end

    def min
        top_node = self
        until top_node.left == nil
            top_node = top_node.left
        end
        top_node.rating
    end


end