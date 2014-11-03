require 'rails_helper'

RSpec.describe "Tasks", :type => :request do
  describe "opening tasks index page" do
    it "should display headline" do
      visit tasks_path
      expect(page).to have_content('Fortis IT Task Manager')
    end

    it "should display tasks name" do
      visit tasks_path
      expect(page).to have_content('Write Jive blogpost about Ruby on Rails')
    end
  end
end
