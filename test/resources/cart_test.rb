require "test_helper"

class CartResourceTest < VCRTest
    def test_cart_create
        client = correct_auth["client"]
        info = client.cart.create()

        assert_equal "vendo@example.com", info["data"]["attributes"]["email"]
        assert_equal "cart", info["data"]["type"]
    end

    def test_cart_create_wrong
        client = wrong_auth["client"]
        info = client.cart.create()
        assert_equal  "Unauthorized Access", info["error"]
    end

    def test_cart_retrieve
        client = correct_auth["client"]
        info = client.cart.retrieve()

        assert_equal "vendo@example.com", info["data"]["attributes"]["email"]
        assert_equal "cart", info["data"]["type"]
    end

    def test_cart_retrieve_wrong
        client = wrong_auth["client"]
        info = client.cart.retrieve()
        assert_equal  "Unauthorized Access", info["error"]
    end
end
