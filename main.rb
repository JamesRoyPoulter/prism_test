require 'duedil'

@duedil = Duedil::Client.new(api_key: 'm75g7anxnj3fswkspssgxrg4')

def search_company_by_number(number)
  response = @duedil.get_company(number)
  if response.ok?
    @company = response.object
  else
    # handle client/server error
  end
end

puts 'What company would you like to search for?'
company_number_query = gets.chomp.to_s

search_company_by_number(company_number_query)

puts @company.name

response = @duedil.get_company('03977902')

if response.ok?
  company = response.object

  p company.sic_code
  p company.sic_description
  p company.id
  p company.name
else
  # handle client/server error
end

puts 'What company would you like to search for?'
company_name_query = gets.chomp.to_s
response = @duedil.search_companies(company_name_query)
company = response.object
p company.pagination
p company.data
