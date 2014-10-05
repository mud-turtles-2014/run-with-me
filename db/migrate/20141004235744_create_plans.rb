class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.belongs_to :run
      t.belongs_to :user
      t.boolean :confirm, default: false

      t.timestamps
    end
  end
end
