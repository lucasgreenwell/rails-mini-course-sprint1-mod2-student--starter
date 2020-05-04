require_relative("Book")

class ComicBook < Book 
    # - Add a `read` method to `ComicBook` that sets the `finished` value to `true`\
    def read
        @finished = true
    end
end

comicbook = ComicBook.new("batman", "batman day")

comicbook.read

print(comicbook.recommended_books)