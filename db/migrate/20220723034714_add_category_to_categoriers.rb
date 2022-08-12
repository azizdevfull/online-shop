class AddCategoryToCategoriers < ActiveRecord::Migration[7.0]
  def change
    add_reference :categoriers, :category, null: false, foreign_key: true
  end
end
