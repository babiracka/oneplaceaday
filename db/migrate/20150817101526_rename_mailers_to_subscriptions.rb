class RenameMailersToSubscriptions < ActiveRecord::Migration
  def change
  	rename_table :mailers, :subscriptions
  end
end
