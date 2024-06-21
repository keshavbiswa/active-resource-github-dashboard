ActiveSupport::Notifications.subscribe('request.active_resource') do |name, start, finish, id, payload|
  uri = payload[:request_uri]
  method = payload[:method]
  result = payload[:result]
  duration = (finish - start) * 1000  # Convert duration to milliseconds

  Rails.logger.debug("[ActiveResource] #{method.upcase} #{uri} completed in #{duration.round(2)}ms with result: #{result.code}, #{result.body}")
end
