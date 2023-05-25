class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        referral_emails_path
      end
end
