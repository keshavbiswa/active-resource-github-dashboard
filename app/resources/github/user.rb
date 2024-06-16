class Github::User < Github::Base
  self.element_name = 'user'

  # has_many :organizations, class_name: 'Github::Organization'

  def organizations
    Github::Organization.find(:all, from: '/user/orgs')
  end

  def repositories
    Github::Repository.find(:all, from: '/user/repos', params: { per_page: 100, sort: 'updated', type: 'public' })
  end

  def self.find_authenticated
    find(:one, from: '/user')
  end
end
