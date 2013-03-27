module Hector
  class JekyllIdentityAdapter
    attr_accessor :adapters

    def initialize(adapters = [])
      @adapters = adapters
    end

    def authenticate(username, password)
      authenticated = adapters.any? do |adapter|
        adapter.authenticate(username, password) { |authenticated| authenticated }
      end

      yield authenticated
    end

    def normalize(username)
      # TODO
      username
    end
  end
end
