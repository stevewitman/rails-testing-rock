require 'rails_helper'
require_relative '../support/new_course_form'

feature 'create new course' do
  let(:new_course_form) { NewCourseForm.new }

  scenario 'create new course with valid data' do
    new_course_form.visit_page.fill_in_with(
      title: 'Rails Testing',
      description: 'Test description',
      privacy: 'Public'
    ).submit

    expect(page).to have_content('Course has been created')
    expect(Course.last.title).to eq('Rails Testing')
  end

  scenario 'cannot create course with invalid data' do
    new_course_form.visit_page.submit

    expect(page).to have_content("can't be blank")
  end
end
