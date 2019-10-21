require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  # Model a Library as a class.
  #
  # Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
  # This should look something like:
  #
  #   {
  #     title: "lord_of_the_rings",
  #     rental_details: {
  #      student_name: "Jeff",
  #      date: "01/12/16"
  #     }
  #   }

 # Create a getter for the books

  def test_get_books
     library = Library.new(
       {
         title: "lord_of_the_rings",
         rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
         }
       }

)
     assert_equal(      {
              title: "lord_of_the_rings",
              rental_details: {
              student_name: "Jeff",
              date: "01/12/16"
              }
            }, library.book)
  end


  # Create a method that takes in a book title and returns all of the information about that book.


    def test_get_books_by_name__return_title

       library = Library.new(
         {
           title: "lord_of_the_rings",
           rental_details: {
           student_name: "Jeff",
           date: "01/12/16"
           }
         }

  )
       assert_equal(      {
                title: "lord_of_the_rings",
                rental_details: {
                student_name: "Jeff",
                date: "01/12/16"
                }
              }, library.get_books_by_name__return_title("lord_of_the_rings"))
    end

  # Create a method that takes in a book title and returns only the rental details for that book.
  def test_get_books_by_name__return_rental_details

     library = Library.new(
       {
         title: "lord_of_the_rings",
         rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
         }
       }

)
     assert_equal(
            { student_name: "Jeff",
              date: "01/12/16"
              },
               library.get_books_by_name__return_rental_details("lord_of_the_rings"))
  end



  # Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)

#   def test_add_book_by_name
#
#      library = Library.new(
#        {
#          title: "lord_of_the_rings",
#          rental_details: {
#          student_name: "Jeff",
#          date: "01/12/16"
#          }
#        }
#
# )
#
#      assert_equal(
#       {
#         title: "lord_of_the_rings",
#         rental_details: {
#         student_name: "Jeff",
#         date: "01/12/16"}
#       },
#       {
#         title: "1984",
#         rental_details: {
#         student_name: "",
#         date:" "}
#       },
#       library.add_book_by_name("1984"))
#   end
#
#



  # Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.


    def test_return_book_by_name

       library = Library.new(
         {
           title: "lord_of_the_rings",
           rental_details: {
           student_name: "Jeff",
           date: "01/12/16"
           }
         }

  )
       assert_equal(
        "due to be returned",
        library.return_book_by_name("lord_of_the_rings"))
    end



end
