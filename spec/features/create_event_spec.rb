require 'rails_helper'

# See create_course_spec & support/new_course_form
# for visit_page, fill_in_with, submit methods

feature 'create new event' do
  scenario 'create new event with valid data' do
    visit('/')
    click_on('New Event')

    fill_in('Title', with: 'Meetup')
    fill_in('Description', with: 'This Saturday')
    select('Public', from: 'Privacy')
    check('Featured event')
    attach_file('Cover image', "#{Rails.root}/spec/fixtures/placeholder.png")
    click_on('Create Event')

    expect(page).to have_content('Event has been created')
    expect(Event.last.title).to eq('Meetup')
  end

  scenario 'cannot create event with invalid data' do
    visit('/')
    click_on('New Event')

    click_on('Create Event')

    expect(page).to have_content("can't be blank")
  end
end
