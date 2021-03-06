module LoginsHelper
    def current_muso
        Muso.find_by(id: session[:muso_id])
    end

    def current_host
        Host.find_by(id: session[:host_id])
    end

    def logged_in?
        !!(current_muso || current_host) 
    end

    def which_user
        if current_host != nil
            current_host
        else
            current_muso
        end
    end
end