class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.belongs_to :invited
      t.belongs_to :inviter
      t.boolean :pending, default: true
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end
