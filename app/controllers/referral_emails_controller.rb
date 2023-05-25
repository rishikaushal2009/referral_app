class ReferralEmailsController < ApplicationController
  before_action :authenticate_user!

  def index
    @referral_emails = current_user.referral_emails
    @referral_email = ReferralEmail.new
  end

  def create
    @referral_email = current_user.referral_emails.build(referral_email_params)
  
    if @referral_email.save
      ReferralMailer.referral_email(@referral_email).deliver_now
      redirect_to referral_emails_path, notice: 'Referral email sent successfully.'
    else
      @referral_emails = current_user.referral_emails
      render :index
    end
  end
  

  private

  def referral_email_params
    params.require(:referral_email).permit(:sender_id, :sender_name, :sender_email, :recipient_email)
  end
end
