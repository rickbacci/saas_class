# Define a class BookInStock which represents a book with an isbn number, isbn, 
# and price of the book as a floating-point number, price, as attributes. 
# The constructor should accept the ISBN number (a string) as the first argument and price as second argument, 
# and should raise ArgumentError (one of Ruby's built-in exception types) if the ISBN number is the empty string 
# or if the price is less than or equal to zero.

# Include the proper getters and setters for these attributes. 
# Include a method price_as_string that returns the price of the book 
# with a leading dollar sign and trailing zeros, that is, a price of 20 should display as "$20.00" 
# and a price of 33.8 should display as "$33.80".

class BookInStock
  def initialize isbn, price
    if price <= 0
      raise ArgumentError.new("Price cannot be zero")
    else
      @price = price
    end  

    if isbn == ''
      raise ArgumentError.new("ISBN cannot be empty")
    else
      @isbn = isbn
    end 
  end

  def isbn
  	@isbn
  end

  def isbn=(new_isbn)
  	@isbn = new_isbn
  end

  def price
    @price
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string
  	formatted_price = sprintf "%.2f", @price
  	 puts "$#{formatted_price}"
  end
  # def self.price_as_string
  #   formatted_price = sprintf "%.2f", @price
  #   "$#{formatted_price}"
  # end
end

book = BookInStock.new('44234', 20)

#  p book
#  book.price_as_string
#  #p book.price=0
# book.price_as_string

 
# book.isbn='blah'
# p book

# book.price_as_string

#p BookInStock.price_as_string
