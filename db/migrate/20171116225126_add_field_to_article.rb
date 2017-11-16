class AddFieldToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :is_deleted, :boolean, default: false
    add_column :articles, :description, :text
  end
end
