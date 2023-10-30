class CreateSatus < ActiveRecord::Migration[6.1]
  def change
    create_table :satus do |t|
      t.text :post

      t.timestamps
    end
  end
end
