require_relative("Book")

class AudioBook < Book 
    # - Add a `listen` method to `AudioBook` that sets the `finished` value to `true`.
    def listen
        @finished = true
    end
end

listenedbook = AudioBook.new("heartitle", "heardate")

listenedbook.listen

print(listenedbook.recommended_books)