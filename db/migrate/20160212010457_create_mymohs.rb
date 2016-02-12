class CreateMymohs < ActiveRecord::Migration
  def change
    create_table :mymohs do |t|

      t.timestamps null: false
    end
  end
end
