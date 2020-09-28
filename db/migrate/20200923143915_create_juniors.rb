class CreateJuniors < ActiveRecord::Migration[6.0]
  def change
    create_table :juniors do |t|
      t.references :advocate, foreign_key: true
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :juniors, :email, unique: true
  end
end
