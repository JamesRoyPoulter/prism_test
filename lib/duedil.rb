class Duedil

  @duedil = Duedil::Client.new(api_key: 'm75g7anxnj3fswkspssgxrg4')

  def search_company_by_number(number)
    response = @duedil.get_company(number)
    if response.ok?
      @company = response.object
    else
      # handle client/server error
    end
  end

  def search_company_by_name(name)
    response = @duedil.search_companies(name)
    if response.ok?
      @company = response.object
    else
      # handle client/server error
    end
  end


end