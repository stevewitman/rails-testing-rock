require 'rails_helper'

feature 'create new course' do
  scenario 'create new course with valid data' do
    visit('/')
    click_on('New Course')

    fill_in('Title', with: 'Rails Testing')
    fill_in('Description', with: 'Rails testing course')
    select('Public', from: 'Privacy')
    check('Featured Course')
    attach_file('Cover image', "#{Rails.root}/spec/fixtures/placeholder.png")
    click_on('Create Course')

    expect(page).to have_content('Course has been created')
    expect(Course.last.title).to eq('Rails Testing')
  end
end
