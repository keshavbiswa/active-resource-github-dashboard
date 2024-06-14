class Github::Base < ApplicationResource
  self.site = 'https://api.github.com'

  self.headers["X-Github-Api-Version"] = "2022-11-28"
  self.headers['Accept'] = 'application/vnd.github.v3+json'

  self.auth_type = :bearer
  self.bearer_token = Current.user&.github_token
end
