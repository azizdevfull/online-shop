class CreateCategoriers < ActiveRecord::Migration[7.0]
  def change
    create_table :categoriers do |t|
      t.string :name

      t.timestamps
    end
  end
end
