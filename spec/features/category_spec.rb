require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  describe 'Category' do
    before :each do
      @tom = User.create(name: 'Tom', email: 'wvw@gmail.com', password: 'dwefwe')
      visit user_session_path
      fill_in 'user[email]', with: 'wvw@gmail.com'
      fill_in 'user[password]', with: 'dwefwe'
      click_button 'Log in'
      @category = Category.create(author: @tom, icon: 'wcwrknvevnenevvk', name: 'my_category')
      @category.save
      @deal_first = Deal.create(author: @author, category: @category, name: 'deal', amount: 24)
      @deal_first.save
      @deal_sec = Deal.create(author: @author, category: @category, name: 'deal', amount: 200)
      @deal_sec.save
    end

    feature 'Category index page' do
      background { visit categories_path }

      it 'I can see the navbar title' do
        expect(page).to have_content('Categories')
      end

      it 'I can see the button to create new category' do
        expect(page).to have_content('New category')
      end

      it 'I can see the button to Log out' do
        expect(page).to have_content('Log out')
      end

      it 'I can see the total price of a category' do
        expect(page).to have_content('$ 0')
      end

      it 'I can see the category name' do
        expect(page).to have_content(@category.name.to_s)
      end

      it 'I can be redirect to deals when click on a category' do
        click_link 'my_category'
        expect(current_path).to eq category_deals_path(@category.id)
      end
    end
  end
end
