class Github::Organization < Github::Base
  self.element_name = 'orgs'

  validates :email, format: { with: Devise.email_regexp }, allow_blank: true

  def repositories
    Github::Repository.find(:all, from: "/orgs/#{login}/repos")
  end

  def to_param
    login
  end
end
