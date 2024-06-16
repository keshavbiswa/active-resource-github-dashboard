class Github::Organization < Github::Base
  self.site = 'https://api.github.com/user'
  self.element_name = 'orgs'
end
