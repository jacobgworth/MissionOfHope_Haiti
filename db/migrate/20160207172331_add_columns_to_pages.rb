class AddColumnsToPages < ActiveRecord::Migration
  def change
  	add_column :pages, :url, :string
  	add_column :pages, :content, :text
  	add_column :pages, :headline, :string
  	add_column :pages, :description, :string
  	add_column :pages, :title, :string
  	add_column :pages, :heroimage, :string
  	add_column :pages, :herotext, :string
  	
  end
end
