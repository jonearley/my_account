require 'httparty'

class AlmaClient
  include HTTParty
  base_uri "#{ENV.fetch('ALMA_API_HOST')}/almaws/v1"

  def initialize()
    self.class.headers 'Authorization' => "apikey #{ENV.fetch('ALMA_API_KEY')}"
    self.class.headers 'Accept' => 'application/json'
  end

  def get(url)
    self.class.get(url)
  end

  def put(url, body)
    self.class.headers 'Content-Type' => 'application/json'
    self.class.put(url, { body: body } )
  end

end
