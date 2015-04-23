class TestsController < InheritedResources::Base
 def new
 end

 def create
 end

  private

    def test_params
      params.require(:test).permit(:name, :description)
    end
end

