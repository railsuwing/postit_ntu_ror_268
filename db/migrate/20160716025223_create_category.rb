class CreateCategory < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title

      t.timestamps
    end

    create_table :connections do |t|
      t.integer :post_id
      t.integer :category_id

      t.timestamps
    end
  end
end
