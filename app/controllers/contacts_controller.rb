class ContactsController < ApplicationController
  
  def index
  end

  def callback
  	@contacts = request.env['omnicontacts.contacts']
  end

  def invite_friends
    if request.xhr?
      @total_emails = 0
      unless params[:email_checkbox].blank?
        @total_emails = params[:email_checkbox].size
        params[:email_checkbox].each do |email|
          Contact.send_invitation(email).deliver
        end
        @msg = "#{@total_emails} People invited successfully!"
      end
      if @total_emails == 0
        @msg = "Please select email address to send the invitation!"
      end
      respond_to do |format|
        format.js
      end
    end
  end

end

