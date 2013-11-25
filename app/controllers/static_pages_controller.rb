class StaticPagesController < ApplicationController
  def index
    @suggestion = Suggestion.new
    @suggestions = Suggestion.all
  end
end
