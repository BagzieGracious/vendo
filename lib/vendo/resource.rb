module Vendo
    class Resource
        attr_reader :client

        def initialize(client)
            @client = client
        end

        # handles get request
        def get_request(url, params:{}, headers: {})
            if client.token != ''
                headers['Authorization'] = client.token
                return handle_request client.connection('get', url, params, headers)
            end
            return {"status" => 401,"error" => "Unauthorized Access"}
        end

        # handles post requests
        def post_request(url, params:{}, headers: {})
            if client.token != ''
                headers['Authorization'] = client.token
            end
            handle_request client.connection('post', url, params, headers)
        end

        # handles request body and return response
        def handle_request(response)
            case response.code
            when 400, 401, 403, 405, 500
                message = {
                    'status' => response.code,
                    'error' => response.body['error'],
                    'error_description' => response.body['error_description']
                }    
            else
                message = JSON.parse(response.body)
                if message['access_token']
                    client.token = "Bearer #{message['access_token']}"
                end
            end
            message
        end
    end
end
