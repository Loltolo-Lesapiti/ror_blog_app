require 'rails_helper'

RSpec.describe 'Post index details page', type: :system do
  describe 'testing for user post index page', js: true do
    it 'should display the title of the post' do
      visit('/users/1/posts/1')
      expect(page).to have_content('Imposter Syndrome')
    end

    it 'should displays the user profile.' do
      visit('/users/1/posts/1')
      expect(page).to have_content('Lilly')
    end

    it 'should see how many comments a post has.' do
      visit('/users/1/posts/1')
      expect(page).to have_content('Comments counter: 1')
    end

    it 'should see how many likes a post has.' do
      visit('/users/1/posts/1')
      expect(page).to have_content('Likes counter: 2')
    end

    it 'should see some of the post body' do
      visit('/users/1/posts/1')
      expect(page).to have_content('Title: Imposter Syndrome')
    end

    it 'should see the username of each commentor.' do
      visit('/users/1/posts/1')
      expect(page).to have_content('Lilly')
    end

    it 'should see the comment each commentor.' do
      visit('/users/1/posts/1')
      page.has_content?('Lilly: I would love to attend that school.')
    end
  end
end