module Vendo
    class AccountResource < Resource
        def info
            return get_request("api/v2/storefront/account")
        end

        def authenticate(username, password)
            payload = {
                'grant_type' => 'password',
                'username' => username,
                'password' => password
            }
            return post_request("spree_oauth/token", params: payload)
        end
    end
end