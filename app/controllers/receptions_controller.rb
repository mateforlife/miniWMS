class ReceptionsController < InheritedResources::Base
  private

    def reception_params
      params.require(:reception).permit(:scheduling_id, :document_number, :origin_place, :vehicle_patent, :reference_text, :comment, :user_id)
    end
end
