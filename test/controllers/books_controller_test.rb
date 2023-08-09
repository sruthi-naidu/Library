require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    @library = libraries(:one)
    @book = books(:one)
  end

  test "should get bookslist index" do
    get "/libraries/#{@library.id}/books", as: :json
    assert_response :success

    response_data = JSON.parse(response.body)
    assert_equal @book.availability, response_data.first["availability"]
  end
end
