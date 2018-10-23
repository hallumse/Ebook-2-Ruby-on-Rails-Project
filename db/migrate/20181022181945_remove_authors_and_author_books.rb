class RemoveAuthorsAndAuthorBooks < ActiveRecord::Migration[5.2]
  def change
    drop_table :authors
    drop_table :author_books
  end
end
