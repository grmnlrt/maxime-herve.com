class AddSendEmailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :send_emails, :boolean, default: false
  end
end
