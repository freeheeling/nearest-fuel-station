require 'rails_helper'

describe 'user can select start location' do
  scenario 'and find nearest charging station' do
    visit '/'

    select 'Turing'

    click_button 'Find Nearest Station'

    expect(current_path).to eq('/search')

    expect(page).to have_content()
  end
end

# As a user
# When I visit "/"
# And I select "Turing" from the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.

# 1331 17th St LL100, Denver, CO 80202
