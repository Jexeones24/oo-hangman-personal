class CommandLine

attr_accessor :user, :book

  def initialize
    @user = nil
    @book = nil
  end

  def greet
    puts "What yo name is?!?!"
  end

  def get_input
    gets.chomp
  end

  def find_user(name)
    User.find_by(name: name)
  end

  def list_categories
    puts "Select a category:"
    Category.all.each_with_index do |category, index|
      puts "#{index + 1}: #{category.name}"
    end
  end

  def get_books_from_category
    category = self.get_input
    puts "Here are the books in the category you selected:"
    category_object = Category.where(name: category)
    Book.where(category: category_object).each do |book|
      puts book.title
    end
  end

  def check_out_book
    puts "Please choose a book:"
    book_title = self.get_input
    @book = Book.where(title: book_title).first
    self.user.check_out_book(self.book)
  end

  def return_book
    puts "Would you like to return the book? (y/n)"
    response = self.get_input.upcase
    if response == "Y"
      self.user.return_book(self.book)
    else
      puts "Please be sure to return the book on time!"
    end
  end


end
