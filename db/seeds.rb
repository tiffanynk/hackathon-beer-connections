Brewery.destroy_all

response = RestClient.get('https://api.openbrewerydb.org/breweries?by_state=colorado')

parsed_response = JSON.parse(response)

parsed_response.map do |brewery|
    Brewery.create(name: brewery['name'], city: brewery['city'], website_url: brewery['website_url'])
end