class Github::User < Github::Base
  self.element_name = 'user'

  # has_many :organizations, class_name: 'Github::Organization'

  def organizations
    Github::Organization.find(:all, from: '/user/orgs')
  end

  def self.find_authenticated
    find(:one, from: '/user')
  end
end
