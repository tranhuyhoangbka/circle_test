class AddAuthorIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :author, index: true
  end
end
