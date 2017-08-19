class CreateUsers < ActiveRecord::Migration[5.1]
 
  def up
    create_table :users do |t|

      t.column "first_name",  :string ,:limit => 25
      t.string "lest_name",  :limit => 35
      t.string "email",      :default => "", :null =>false
      t.string "password",  :limit => 40
      t.timestamps

    end

  end

  def down
  	drop_table :users
  end
end
