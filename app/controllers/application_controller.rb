# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

    #Filtro do declarative authorization para todos os controllers da parte ADMIN
  before_filter { |c| Authorization.current_user = c.current_user }

  #mensagem em caso de usuário não autorizado
  protected
    def permission_denied
      flash[:error] = "Desculpe, você não tem permisão para acessar esta área."
      redirect_to root_url
    end
end
