require_relative '../config/environment.rb'

command_line = CommandLine.new

command_line.greet
name= command_line.get_input
command_line.user = command_line.find_user(name)
command_line.list_categories
command_line.get_books_from_category
command_line.check_out_book
command_line.return_book
