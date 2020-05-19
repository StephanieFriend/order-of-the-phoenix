require 'rails_helper'

RSpec.describe 'As a user' do
  it 'I can list Order members by house with their info' do

    visit '/'

    select "Gryffindor", :from => "House"
    click_on "Search For Members"

    expect(current_path).to eq("/search")

    expect(page).to have_content("Name")
    expect(page).to have_content("Role")
    expect(page).to have_content("House")
    expect(page).to have_content("Patronus")
  end
end



# As a user,
#      When I visit "/"
# And I Select “Gryffindor” from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
# And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.
# ​
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)