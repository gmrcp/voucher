class CreateCoupons < ActiveRecord::Migration[7.0]
  def change
    create_table :coupons do |t|
      t.string :title
      t.string :description
      t.string :code
      t.references :sender
      t.references :recipient
      t.integer :num_uses
      t.boolean :used
      t.date :expires_at
      t.datetime :redeemed_at

      t.timestamps
    end

    add_foreign_key :coupons, :users, column: :sender_id, primary_key: :id
    add_foreign_key :coupons, :users, column: :recipient_id, primary_key: :id
  end
end
