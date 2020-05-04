# require_relative("Lendable")

module Lendable
  # 6. Create a `Lendable` module with a `lend` method that decrements the current `count` by one.
  def lend
    # Prevent the `count` from going below `0` in the `lend` method
    if self.count > 0
      self.count = self.count - 1
    end
  end
end

# Create a `Book` class (in a file called `book.rb`) so that we can track how many copies of a book we have and whether we have personally finished reading it or not.
class Book 

  # Use `attr_` macros to provide access to the instance variables.
  # - `title` and `author` should only be readable.
  attr_reader :title, :author, :count, :finished
  attr_writer :finished, :count  

  


    # - The `Book` class should have `title`, `author`, `finished`, and `count` instance variables.
      def initialize(title, author)  
        # - All of the instance variables should be set in the initialize method.
        # - You should be able to pass in the `title` and `author` values when you instantiate a book, but only those two attributes.
        @title = title  
        @author = author 

        # - `finished` is a boolean and should default to `false`.
        # - `count` is an integer and should default to `3`.
        @finished = false
        @count = 3 
      end


      # - Mixin the module into `Book`
      include Lendable
    
      # 5. Add a `recommended_books` class method to the `Book` class that creates and returns an array of recommended books

      def recommended_books
        recommended_books_list = [
          Book.new("The Well-Grounded Rubyist", "David A. Black"),
          Book.new("Practical Object-Oriented Design in Ruby", "Sandi Metz"),
          Book.new("Effective Testing with RSpec 3", "Myron Marston"),
        ]
      end
      # def title  
      #   @title  
      # end  
      
      # def author  
      #   @author  
      # end  

      # def finished  
      #   @finished  
      # end  

      # def count  
      #   @count  
      # end  
end

# 2. Test out your book class using irb.
book_I_read_3times = Book.new("goodTitel", "good author")

# - Test that you can lend a book by verifying the count has reduced
book_I_read_3times.lend
print (book_I_read_3times.count)