require 'rails_helper'

RSpec.describe "Tasks", :type => :request do
  describe "opening tasks index page" do
    before(:each) do
      @todo = Task.create(:text => 'Write Jive blogpost about Ruby on Rails')
      @done = Task.create(:text => 'Drink wine',
                         :completion_ts => Time.now)
    end

    it "should display headline" do
      visit tasks_path
      expect(page).to have_content('Fortis IT Task Manager')
    end

    it "should display tasks name" do
      visit tasks_path
      expect(page).to have_content('Write Jive blogpost about Ruby on Rails')
    end

    it "should not display completed tasks" do
      visit tasks_path
      expect(page).to_not have_content('Drink wine')
    end
  end
end
