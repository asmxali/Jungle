require 'rails_helper'




RSpec.feature "AddToCarts", type: :feature, js: true do
  
      # SETUP
      before :each do
        @category = Category.create! name: 'Apparel'
    
        2.times do |n|
          @category.products.create!(
            name:  "Asma",
            description: Faker::Hipster.paragraph(4),
            image: open_asset('apparel1.jpg'),
            quantity: 10,
            price: 64.99
          )
        end
      end
    
      scenario "They see product details" do
        # ACT
        visit root_path
    
        expect(page).to have_text 'Add'
  
        find('button', match: :first, :text => 'Add').click
        # VERIFY
        expect(page).to have_text 'My Cart (1)'
        save_screenshot
      end
  
end
  

