# fronze_string_literal: true

module Creators
  class ClientCreator < BaseMethod
    def execute
      client_create
    end

    private

    def client_create
      Client.create(
        id: params[:id],
        name: params[:name],
        email: params[:email]
      )
    end
  end
end
