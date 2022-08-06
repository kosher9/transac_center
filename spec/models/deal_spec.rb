require 'rails_helper'

RSpec.describe Deal, type: :model do
  before :each do
    @author = User.create(name: 'Tom', email: 'wvw@gmail.com', password: 'dwefwe')
    @category = Category.create(author: @author, icon: 'wcwrknvevnenevvk', name: 'category')
  end

  it 'is valid with valid attributes ' do
    expect(Deal.create(author: @author, category: @category, name: 'deal', amount: 24)).to be_valid
  end

  it 'is not valid with empty name ' do
    expect(Deal.create(author: @author, category: @category, name: '', amount: 24)).to_not be_valid
  end

  it 'is not valid with amount value 0' do
    expect(Deal.create(author: @author, category: @category, name: 'deal', amount: 0)).to_not be_valid
  end
end
