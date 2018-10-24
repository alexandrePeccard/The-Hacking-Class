class CreateDatabaseAndTables < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
    	t.string "name", null: false

    	t.timestamps
    end

    create_table :students do |t|
    	t.string "name", null: false

    	t.references :course, index: true

    	t.timestamps
    end
  end
end
