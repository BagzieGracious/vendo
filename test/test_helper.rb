require "vendo"
require 'rubygems'
require 'test/unit'
require 'vcr'

class VCRTest < Test::Unit::TestCase
    def correct_auth
        client = Vendo::Client.new()
        account = client.account.authenticate("vendo@example.com", "vendo123")
        return {"client" => client, "account" => account}
    end

    def wrong_auth
        client = Vendo::Client.new()
        account = client.account.authenticate("vendo@example.com", "wrong-password")
        return {"client" => client, "account" => account}
    end
end
