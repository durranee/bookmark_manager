feature 'Viewing links' do
  scenario 'User sees links' do
    visit('/')
    expect(page).to have_content "Link1 is awesome"
    expect(page).to have_content "Link2 is also awesome"
    expect(page).to have_content "Link3 is shite"
  end
end
