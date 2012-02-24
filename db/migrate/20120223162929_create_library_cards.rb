class CreateLibraryCards < ActiveRecord::Migration
  def change
    create_table :library_cards do |t|
      t.integer :user_id
      t.string :number
      t.string :zip_code

      t.timestamps
    end
  end
end
