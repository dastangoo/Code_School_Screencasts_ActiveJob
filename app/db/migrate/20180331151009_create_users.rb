class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.string :age

      t.timestamps
    end
  end
end
