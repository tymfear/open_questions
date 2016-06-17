class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name, null: false
      t.string :owner
      t.string :git_url

      t.timestamps null: false
    end
  end
end
