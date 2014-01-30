class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true
      t.integer :seller_rating

      t.timestamps
    end
  end
end
