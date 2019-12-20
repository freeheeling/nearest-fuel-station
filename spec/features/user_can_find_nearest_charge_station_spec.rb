require 'rails_helper'

describe 'user can select start location' do
  scenario 'and find nearest charging station' do
    visit '/'

    select 'Turing'

    click_button 'Find Nearest Station'

    expect(current_path).to eq('/search')

    expect(page).to have_content('1225 17th St.')
  end
end
