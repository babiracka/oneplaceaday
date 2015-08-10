class CreateMailers < ActiveRecord::Migration
  def change
    create_table :mailers do |t|
      t.string :email
      t.string :confirmed, default: false
      t.string :subtoken
      t.string :unsubtoken

      t.timestamps null: false
    end
  end
end
