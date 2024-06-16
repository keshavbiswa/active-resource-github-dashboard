class Github::Organization < Github::Base
  self.element_name = 'orgs'

  def to_param
    login
  end
end
