require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  describe 'Category' do
    before :each do
      @tom = User.create(name: 'Tom', email: 'wvw@gmail.com', password: 'dwefwe')
      visit user_session_path
      fill_in 'user[email]', with: 'wvw@gmail.com'
      fill_in 'user[password]', with: 'dwefwe'
      click_button 'Log in'
      @category = Category.create(author: @tom, icon: 'wcwrknvevnenevvk', name: 'category')
      @deal = Deal.create(author: @author, category: @category, name: 'deal', amount: 24)
    end

    feature 'Category index page' do
      it 'I can see the navbar title' do
        expect(page).to have_content('Categories')
      end
    end
  end
end
