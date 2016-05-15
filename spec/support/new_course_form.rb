class NewCourseForm
  include Capybara::DSL

  def visit_page
    visit('/')
    click_on('New Course')
    self
  end

  def fill_in_with(params = {})
    fill_in('Title', with: params.fetch(:title, ''))
    fill_in('Description', with: params.fetch(:description, ''))
    select(params.fetch(:privacy), from: 'Privacy')
    check 'Featured course'
    attach_file('Cover image', "#{Rails.root}/spec/fixtures/placeholder.png")
    self
  end

  def submit
    click_on('Create Course')
    self
  end

end
