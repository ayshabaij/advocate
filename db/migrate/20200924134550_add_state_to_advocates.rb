class AddStateToAdvocates < ActiveRecord::Migration[6.0]
  def change
    add_column :advocates, :state, :string
    add_column :advocates, :case, :string
  end
end
