class ApplicationResource < ActiveResource::Base
  self.site = "http://localhost:3000"
  self.include_format_in_path = false


  def assign_attributes(new_attributes)
    new_attributes.each do |key, value|
      send("#{key}=", value)
    end
  end
end
