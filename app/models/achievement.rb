class Achievement < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :privacy, presence: true

  enum privacy: [ :public_access, :private_access, :friends_access ]

  def description_html
    Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(description)
  end
end
