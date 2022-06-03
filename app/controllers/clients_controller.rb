# fronze_string_literal: true

class ClientsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    clients = Client.all

    render json: clients
  end

  def show
    client = Client.find_by(id: allow_params[:id])

    render json: client
  end

  def create
    client = Creators::ClientCreator.call(allow_params)

    render json: client
  end

  def update  
    client = Updaters::ClientUpdater.call(allow_params)

    render :ok
  end

  def destroy
    Client.where(id: allow_params[:id]).destroy_all

    render :ok
  end

  private

  def allow_params
    params.permit(:id, :name, :email)
  end
end
