class AddCategoryToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :category, :string
  end
end
