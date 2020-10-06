class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resources)
        tareas_path
    end
end
