class User < ActiveRecord::Base
  has_many :user_books
  has_many :books, through: :user_books

  def check_out_book(book, attributes=nil)
    checkout = UserBook.new(returned: false)
    checkout.book = book
    checkout.user = self
    checkout.save
  end

  def return_book(book)
    checkout = UserBook.where(book: book, user: self, returned: false)
    UserBook.update(checkout.ids.first, returned: true)
  end
end
