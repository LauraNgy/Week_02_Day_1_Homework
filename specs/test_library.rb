require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup

    @library = Library.new([
      @book1 = {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    },
    @book2 = {
      title: "harry_potter",
      rental_details: {
       student_name: "Amy",
       date: "03/01/17"
      }
    },
    @book3 = {
      title: "catch_22",
      rental_details: {
       student_name: "Mindy",
       date: "22/02/16"
      }
    }
    ])
  end

  def test_get_book
    assert_equal({
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
        }
      }, @library.books_array[0])
  end

  def test_book_details_by_name__book_found
    assert_equal({
      title: "harry_potter",
      rental_details: {
       student_name: "Amy",
       date: "03/01/17"
      }
    }, @library.book_details("harry_potter"))
  end

  def test_book_details_by_name__book_not_found
    assert_equal("Book not found", @library.book_details("half_blood_prince"))
  end

  # def test_rental_details_by_name
  #   assert_equal({
  #    student_name: "Mindy",
  #    date: "22/02/16"
  #   }, @library.rental_details("catch22"))
  # end

  

end
