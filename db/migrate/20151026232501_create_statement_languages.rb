class CreateStatementLanguages < ActiveRecord::Migration
  def change
    create_table :statement_languages do |t|
      t.string :text
      t.references :statement
      t.references :language

      t.timestamps null: false
    end
  end
end
