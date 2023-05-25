class AddSenderIdToReferralEmails < ActiveRecord::Migration[7.0]
  def change
    add_column :referral_emails, :sender_id, :integer
  end
end
