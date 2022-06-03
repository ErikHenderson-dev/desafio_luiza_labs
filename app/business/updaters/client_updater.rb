# fronze_string_literal: true

module Updaters
  class ClientUpdater < BaseMethod
    def execute
      client_update
    end

    private

    def client_update      
      client = Client.find(params[:id])
      
      client.update(
        name: params[:name],
        email: params[:email]
      )
    end
  end
end
