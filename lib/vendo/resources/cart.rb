module Vendo
    class CartResource < Resource
        def create
            return post_request("api/v2/storefront/cart")
        end

        def retrieve
            return get_request("api/v2/storefront/cart")
        end
    end
end
