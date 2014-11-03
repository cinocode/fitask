require 'rails_helper'

RSpec.describe "Tasks", :type => :request do
  describe "opening tasks index page" do
    it "should display headline" do
      visit tasks_path
      expect(page).to have_content('Fortis IT Task Manager')
    end
  end
end
