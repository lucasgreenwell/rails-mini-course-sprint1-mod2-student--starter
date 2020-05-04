
# Create a `Book` class (in a file called `book.rb`) so that we can track how many copies of a book we have and whether we have personally finished reading it or not.
class Book 
    # - The `Book` class should have `title`, `author`, `finished`, and `count` instance variables.
    def initialize(title, author)  
        # passing in the arguments as instance properties
        @title = title  
        @author = author 
        @finished = false
        @count = 3 
      end
    
      def title  
        @title  
      end  
      
      def author  
        @author  
      end  

      def finished  
        @finished  
      end  

      def count  
        @count  
      end  
end

book_I_read_3times = Book.new("goodTitel", "good author")

print (book_I_read_3times.count)