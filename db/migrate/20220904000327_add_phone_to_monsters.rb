class AddPhoneToMonsters < ActiveRecord::Migration[7.0]
  def change
    add_column :monsters, :phone, :string
  end
end
