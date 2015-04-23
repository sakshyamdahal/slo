class OptionsController < InheritedResources::Base

  private

    def option_params
      params.require(:option).permit(:question_id, :opt, :correct)
    end
end

