class Library

  attr_accessor :book, :library

  def initialize(book)
    @book = book

  end


  def get_books_by_name__return_title(book_name)
 #  for book in books?
    if book[:title] == book_name
    return book
    end
  end


  def get_books_by_name__return_rental_details(book_name)
    if book[:title] == book_name
    return book[:rental_details]
    end
  end


  def add_book_by_name(book_name)
    book[:title] = book_name
    book = book.push(book_name)
    return book
  end

end
