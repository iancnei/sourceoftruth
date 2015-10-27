class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :color
      t.string :symbol
      t.string :convention_link

      t.timestamps null: false
    end
  end
end
