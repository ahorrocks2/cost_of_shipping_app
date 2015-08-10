require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel application path', {:type => :feature}) do
  it('outputs the cost of shipping given various factors about a parcel') do
    visit('/')
    fill_in('length', :with => 8)
    fill_in('width', :with => 3)
    fill_in('height', :with => 2)
    fill_in('distance', :with => 463)
    fill_in('weight', :with => 3)
    fill_in('speed', :with => "Fast")
    click_button('Calculate Shipping Cost')
    expect(page).to have_content(14)
  end
end
