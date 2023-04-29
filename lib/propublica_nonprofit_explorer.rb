require 'httparty'

class ProPublicaNonprofitExplorer
  include HTTParty
  base_uri 'https://projects.propublica.org/nonprofits/api/v2'

  def self.search(query)
    response = get("/search.json", query: { q: query })
    response.parsed_response
  end

  def self.organization(ein)
    response = get("/organizations/#{ein}.json")
    response.parsed_response
  end
end
