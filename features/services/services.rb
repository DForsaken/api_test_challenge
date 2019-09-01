module APIServices
  include HTTParty

  base_uri CONFIG['users_base_api_url'].to_s
  format :json
  headers 'Content-Type' => 'application/json',
          'Accept' => 'application/json'

end