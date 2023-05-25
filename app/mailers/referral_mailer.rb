class ReferralMailer < ApplicationMailer
    def referral_email(referral_email)
      @referral_email = referral_email
      mail(
        to: referral_email.recipient_email,
        subject: 'Invitation to join our referral program'
      )
    end
  end
  