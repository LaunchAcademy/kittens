class AddImageToKittens < ActiveRecord::Migration
  def change
    add_column :kittens, :image, :string, null: false
  end
end
