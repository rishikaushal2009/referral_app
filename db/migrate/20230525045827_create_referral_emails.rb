class CreateReferralEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :referral_emails do |t|
      t.string :sender_name
      t.string :sender_email
      t.string :recipient_email
      t.string :token
      t.datetime :sent_at

      t.timestamps
    end
  end
end
