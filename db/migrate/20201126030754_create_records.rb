class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :document_ref
      t.text :text
      t.string :error
      t.text :comment
      t.text :revision
      t.boolean :approved
      t.boolean :incorporated

      t.timestamps
    end
  end
end
