module Admin
    class SessionsController < Devise::SessionsController
        layout 'admin'
        
        def create
            resource = warden.authenticate!(:scope => resource_name)
            sign_in(resource_name, resource)
            respond_with resource, location: after_sign_in_path_for(resource)
        end
    end
end