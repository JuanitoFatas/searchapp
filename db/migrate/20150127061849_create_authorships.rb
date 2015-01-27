class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.references :article, index: true
      t.references :author, index: true

      t.timestamps null: false
    end
    add_foreign_key :authorships, :articles
    add_foreign_key :authorships, :authors
  end
end
