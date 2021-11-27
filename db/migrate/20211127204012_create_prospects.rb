class CreateProspects < ActiveRecord::Migration[6.1]
  def change
    create_table :prospects do |t|
      t.string :name,               null: false, default: ""
      t.string :last_name,          null: false, default: ""
      t.string :phone,              null: false, default: ""
      t.string :email,              null: false, default: ""
      t.string :status,             null: false, default: "prospect"

      t.timestamps
    end
  end
end
