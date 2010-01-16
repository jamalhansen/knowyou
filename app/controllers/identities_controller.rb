class IdentitiesController < ApplicationController
  include OpenIdAuthentication
  before_filter :require_user

  def new
    @identity = Identity.new
  end

  def create
    if params[:openid_identifier]

      openid_identifier = normalize_url(params[:openid_identifier])
      identity = Identity.new :name  => openid_identifier
      if !identity.valid?
        @identity = identity
        render :action => :new
        return
      end
    end

    authenticate_open_id
  end

  def authenticate_open_id
    authenticate_with_open_id do |result, identity_url|
      if result.successful?
       identity = Identity.new(:name => identity_url)
       identity.user = current_user
       identity.save
	  
       flash[:message] = "Open Id Authenticated"
       redirect_to root_url
     else
       flash[:error] = result.message
       redirect_to new_identity_path
      end
    end
  end

  private
    def normalize_url url
      begin
        OpenID.normalize_url url
      rescue OpenID::DiscoveryFailure => e
        url
      end
    end
end
