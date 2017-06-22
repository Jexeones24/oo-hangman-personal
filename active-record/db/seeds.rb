jk_rowling = Author.create(name: "JK Rowling")
fantasy = Category.create(name: "fantasy")
harry_potter = Book.create(title: "Harry Potter", author_id: jk_rowling.id, category_id: fantasy.id)

madeline_lengle = Author.create(name: "Madeline Lengle")
fantasy = Category.create(name: "fantasy")
a_wrinkle_in_time = Book.create(title: "A Wrinkle in Time", author_id: madeline_lengle.id, category_id: fantasy.id)

andre_agassi = Author.create(name: "Andre Agassi")
biography = Category.create(name: "biography")
the_open = Book.create(title: "Open", author_id: andre_agassi.id, category_id: biography.id)

alex = User.create(name: "Alex")
jess = User.create(name: "Jess")
sarah = User.create(name: "Sarah")
alex2 = User.create(name: "Alex2")
