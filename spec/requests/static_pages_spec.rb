require 'spec_helper'

describe "Static pages" do

  describe "Index page" do

    it "should have the content 'Just Ask App'" do
      visit root_url
      expect(page).to have_content('Just Ask App')
    end

    it "should have the right title" do
      visit root_path
      expect(page).to have_title("Just Ask App")
    end
  end
end
