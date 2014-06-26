class AuthenticationsController < InheritedResources::Base
  def create
    render :text => request.env["omniauth.auth"].to_yaml
  end
end
