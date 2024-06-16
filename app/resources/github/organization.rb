class Github::Organization < Github::Base
  self.element_name = 'orgs'

  def repositories
    Github::Repository.find(:all, from: "/orgs/#{login}/repos")
  end

  def to_param
    login
  end
end
