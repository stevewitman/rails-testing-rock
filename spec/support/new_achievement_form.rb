class NewAchievementForm
  include Capybara::DSL

  def visit_page
    visit('/')
    click_on('New Achievement')
    self
  end

  def fill_in_with(params = {})
    fill_in('Title', with: params.fetch(:title, ''))
    fill_in('Description', with: params.fetch(:description, ''))
    select(params.fetch(:privacy), from: 'Privacy')
    check('Featured achievement')
    attach_file('Cover image', "#{Rails.root}/spec/fixtures/placeholder.png")
    self
  end

  def submit
    click_on('Create Achievement')
    self
  end

end
