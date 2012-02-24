class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :type
      t.integer :status_id
      t.integer :checkout_date
      t.integer :due_date
      t.integer :library_card_id
      t.date :pickup_by

      t.timestamps
    end
  end
end
