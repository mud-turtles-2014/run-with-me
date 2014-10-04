class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.datetime :time
      t.string :location
      belongs_to :request

      t.timestamps
    end
  end
end
