

    def client_params
        params.require(:client).permit(:last_name, :first_name, :address1, :address2, :city, :state, :zip, :mobile_phone, :work_phone, :email)
    end
