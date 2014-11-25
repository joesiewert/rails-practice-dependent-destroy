class MedicationsController < ApplicationController
  def show
    @medication = Medication.find(params[:id])
  end

  def destroy
    @medication = Medication.find(params[:id])
    @medication.destroy
    flash[:notice] = "Medication has been removed"
    redirect_to root_path
  end
end
