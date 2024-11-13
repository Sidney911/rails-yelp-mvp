class CreateRes < ActiveRecord::Migration[7.1]
  def change
    create_table :res do |t|

      t.timestamps
    end
  end
end
