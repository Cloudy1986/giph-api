feature 'homepage' do
  scenario 'user can view content on homepage' do
    visit '/'
    expect(page).to have_content 'Hello world served by a view'
  end
end
