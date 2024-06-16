class Github::User < Github::Base
  self.element_name = 'user'

  def self.find_authenticated
    find(:one, from: '/user')
  end
end
