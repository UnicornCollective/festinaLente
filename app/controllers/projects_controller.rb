

def project_params 
    params.require(:project).permit(:name, :address1, :address2, :city, :state, :zip, :state, :square_footage, :status, :description)
end
