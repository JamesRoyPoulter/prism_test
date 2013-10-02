class Page < ActiveRecord::Base
  # attr_accessible :title, :body


duedil = Duedil::Client.new(api_key: 'm75g7anxnj3fswkspssgxrg4')

# response = duedil.get_company('03977902')

# if response.ok?
#   company = response.object

#   p company.sic_code
#   p company.sic_description
#   p company.id
#   p company.name
# else
#   # handle client/server error
# end


end
