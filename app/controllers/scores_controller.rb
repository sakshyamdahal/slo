class ScoresController < InheritedResources::Base

  private

    def score_params
      params.require(:score).permit(:user_id, :test_id, :percentage)
    end
end

