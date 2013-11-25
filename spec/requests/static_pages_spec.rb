require 'spec_helper'

describe "Static pages" do

  describe "Index page" do

    it "should have the content 'Just Ask App'" do
      visit '/static_pages/index'
      expect(page).to have_content('Just Ask App')
    end

    it "should have the right title" do
      visit '/static_pages/index'
      expect(page).to have_title("Just Ask App")
    end
  end
end
