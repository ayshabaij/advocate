class CreateCaseDocs < ActiveRecord::Migration[6.0]
  def change
    create_table :case_docs do |t|
      t.references :advocate, foreign_key: true, presence: false
      t.string :document_name

      t.timestamps
    end
  end
end
