class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.references :user, index: true, foreign_key: true
      t.decimal :amount, precision: 15, scale: 2

      t.timestamps null: false
    end
  end
end
