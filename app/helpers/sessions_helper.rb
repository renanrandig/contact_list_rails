module SessionsHelper

    def sign_in(user)
        session[:user_id] = user.id
    end

    def sign_out
        session.delete(:user_id)
    end

    def current_user
        # O ||= verifica se a variavel está setada se tiver ele nao executa.
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def user_signed_in?
        !current_user.nil?
    end
end
