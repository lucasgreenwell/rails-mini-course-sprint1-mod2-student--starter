module Lendable
  # 6. Create a `Lendable` module with a `lend` method that decrements the current `count` by one.
  def lend
    # Prevent the `count` from going below `0` in the `lend` method
    if @count > 0 
      @count -= 1
    end
  end
end
