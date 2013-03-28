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

    def forget(username)
      # Do nothing
    end

    def normalize(username)
      username.strip.downcase
    end

    def remember(username)
      # Do nothing
    end
  end
end
