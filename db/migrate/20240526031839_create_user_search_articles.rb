class CreateUserSearchArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :user_search_articles do |t|
      t.references :user_ip, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
