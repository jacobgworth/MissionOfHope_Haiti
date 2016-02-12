class CreateOrphanSponsorships < ActiveRecord::Migration
  def change
    create_table :orphan_sponsorships do |t|
      t.string :first_name
      t.integer :age
      t.integer :sponsorship_number
      t.string :bio
      t.string :image
      t.string :slug

      t.timestamps null: false
    end
  end
end
