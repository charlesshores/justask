class SuggestionsController < ApplicationController
  def create
    @suggestion = Suggestion.create(suggestion_params)
    if @suggestion.save
      flash[:success] = "Suggestion accepted."
    else
      flash[:error] = "Suggestion rejected."
    end
    redirect_to root_url
  end

  private

  def suggestion_params
    params.require(:suggestion).permit(:content)
  end
end
