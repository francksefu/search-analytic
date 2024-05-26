class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.integer :number_of_search

      t.timestamps
    end
    add_index :articles, :name, unique: true
  end
end
