class Admin::ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  before_action :sign_in

  def index
    @clients = Client.where(start: params[:start]..params[:end])
  end

  def show
  end

  def new
    @client = Client.new(client_params)
    @client.save
  end

  def edit
  end

  def create
    @client = Client.new(client_params)
    @client.save
  end

  def update
    @client.update(client_params)
  end

  def destroy
    @client.destroy
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end


    def client_params
        params.require(:client).permit(:last_name, :first_name, :address1, :address2, :city, :state, :zip, :mobile_phone, :work_phone, :email)
    end


   def sign_in
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end
end


