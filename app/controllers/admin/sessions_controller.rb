module Admin
    class SessionsController < Devise::SessionsController
        layout 'admin'
        
        def create
            resource = warden.authenticate!(:scope => resource_name)
            
            set_flash_message!(:notice, :signed_in)
            sign_in(resource_name, resource)
            yield resource if block_given?
            respond_with resource, location: after_sign_in_path_for(resource)
        end
    end
end
