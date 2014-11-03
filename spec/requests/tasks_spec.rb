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

  describe "creating a task" do
    before(:each) do
    end

    it "should display the new tasks text" do
      visit tasks_path
      fill_in 'new_task_text', :with => 'Acquire world domination'
      click_button 'new_task_submit'
      expect(page).to have_content('Acquire world domination')
    end
  end
end
