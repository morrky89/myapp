feature 'home page' do
  describe 'user visit home page', type: :feature do
    it 'use see home page' do
      visit '/'
      
      expect(page).to have_content('Hello')
    end
  end
end