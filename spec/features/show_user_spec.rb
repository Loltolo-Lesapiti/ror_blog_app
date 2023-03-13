require 'rails_helper'
RSpec.describe 'User Show Page', type: :system do
  describe 'User show page', js: true do
    it 'should displays the the profile picture of user.' do
      visit('users/1')
      page.has_content?('Screenshot Image')
      expect(page).to have_css('img')
    end
    it 'should displays the user profile.' do
      visit('users/1')
      expect(page).to have_content('Lilly')
    end
    it 'should display the number of posts per user.' do
      visit('users/1')
      expect(page).to have_content('3')
    end
    it 'should display the user bio' do
      visit('users/1')
      expect(page).to have_content('web developer')
    end
    it 'should display first three posts by a user' do
      visit('users/1')
      expect(page).to have_content('Imposter Syndrome')
      expect(page).to have_content('Microverse')
      expect(page).to have_content('Hackarank')
    end
    it 'should display a button to see all posts.' do
      visit('users/1')
      expect(page).to have_content('See all posts')
    end
    it 'should redirects to the post details when clicked' do
      visit('users/1')
      click_button('See all posts')
      expect(page).to have_current_path('/users/1/posts')
    end
    # it 'it When I click a users post, it redirects me to that post' do
    #   visit('users/1')
    #   click_button('See all posts')
    #   expect(page).to have_current_path('/users/1/posts')
    # end
  end
end