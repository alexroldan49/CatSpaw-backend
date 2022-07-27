class AddImageToCat < ActiveRecord::Migration[6.1]
  def change
    add_column :cats, :image, :string
  end
end
