class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.belongs_to :run
      t.belongs_to :user

      t.timestamps
    end
  end
end
