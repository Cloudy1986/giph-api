class API
  include HTTParty
  base_uri 'api.aakhilv.me'

  def initialize(service, page)
    @options = { query: {site: service, page: page} }
  end

end
