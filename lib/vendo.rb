require 'uri'
require 'json'
require 'net/http'
require_relative "vendo/version"

module Vendo
  autoload :Client, "vendo/client"
  autoload :Resource, "vendo/resource"
end
