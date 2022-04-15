require 'uri'
require 'json'
require 'net/http'
require_relative "vendo/version"

module Vendo
  autoload :Client, "vendo/client"
  autoload :Resource, "vendo/resource"

  # Vendo API calls
  autoload :CartResource, "vendo/resources/cart"
  autoload :AccountResource, "vendo/resources/account"
end
