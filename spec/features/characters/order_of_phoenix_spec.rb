require 'rails_helper'

RSpec.describe 'As a user' do
  it 'I can list Order members by house with their info' do
    member1 = Character.create(name: 'Harry Potter', role: 'Auror', house: 'Gryffindor', patronus: 'Stag')
    member2 = Character.create(name: 'Severus Snape', role: 'Potions Master', house: 'Slytherin', patronus: 'Doe')

    visit '/'

    select "Gryffindor", :from => "House"
    click_on "Search For Members"

    expect(current_path).to eq("/search")

    expect(page).to have_content("Name")
    expect(page).to have_content("Role")
    expect(page).to have_content("House")
    expect(page).to have_content("Patronus")
    expect(page).to have_content(member1.name)
    expect(page).to have_content(member1.role)
    expect(page).to have_content(member1.house)
    expect(page).to have_content(member1.patronus)
    expect(page).to have_no_content(member2.name)
    expect(page).to have_no_content(member2.role)
    expect(page).to have_no_content(member2.house)
    expect(page).to have_no_content(member2.patronus)
  end
end