class CreateTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :titles do |t|
      t.string :author
      t.string :publisher
      t.integer :amount
      t.string :library

      t.timestamps
    end
  end
end
