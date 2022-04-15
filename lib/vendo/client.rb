module Vendo
    class Client
        attr_accessor :token
        BASE_URL = "https://demo.getvendo.com/"

        def initialize
            @token = ''
        end

        def account
            AccountResource.new(self)
        end

        def cart
            CartResource.new(self)
        end

        def connection(method, uri, params, headers)
            url = URI.parse(BASE_URL + uri)
            Net::HTTP.start(url.host, url.port, :use_ssl => url.scheme == 'https') do |http|
                headers['Content-Type'] = 'application/json'
                if method == 'get'
                    request = Net::HTTP::Get.new url
                    request['Authorization'] = headers['Authorization']
                    http.request request
                else
                    Net::HTTP.send(method, url, params.to_json, headers)
                end
            end
        end
    end    
end
