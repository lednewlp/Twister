class CreateTwistees < ActiveRecord::Migration[6.0]
  def change
    create_table :twistees do |t|
      t.text :twistee

      t.timestamps
    end
  end
end
