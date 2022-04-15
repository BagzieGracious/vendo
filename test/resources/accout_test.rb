require "test_helper"

class AccountResourceTest < VCRTest
    def test_authenticate
        account = correct_auth["account"]
        assert_equal  "Bearer", account['token_type']
    end

    def test_authenticate_error
        account = wrong_auth["account"]
        assert_equal  "invalid_grant", account['error']
    end

    def test_account_info
        client = correct_auth["client"]
        info = client.account.info()

        assert_equal "vendo@example.com", info["data"]["attributes"]["email"]
        assert_equal "user", info["data"]["type"]
    end

    def test_account_info_unauthorized_access
        client = wrong_auth["client"]
        info = client.account.info()

        assert_equal "Unauthorized Access", info["error"]
    end
end
