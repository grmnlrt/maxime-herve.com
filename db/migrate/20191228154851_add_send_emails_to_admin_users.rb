class AddSendEmailsToAdminUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_users, :send_emails, :boolean, default: false
  end
end
