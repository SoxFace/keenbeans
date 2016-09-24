class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :about
      t.string :twitter
      t.string :linkedin
      t.string :facebook
      t.string :github
      t.string :site

      t.timestamps null: false
    end
  end
end
