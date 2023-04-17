class CreateDirectors < ActiveRecord::Migration[7.0]
  def change
    create_table :directors do |t|
      t.string :first_name
      t.string :last_name
      t.references :tv_show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
