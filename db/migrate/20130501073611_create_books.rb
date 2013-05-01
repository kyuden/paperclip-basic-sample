class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :price
      t.string :publish

      t.timestamps
    end
  end
end
