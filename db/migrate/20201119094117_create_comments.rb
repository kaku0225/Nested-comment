class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.date :birthday
      t.string :gender
      t.text :content
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
