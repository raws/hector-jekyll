module Hector
  class Identity
    attr_accessor :adapter

    class << self
      def authenticate(username, password)
        authenticated_adapter = Array(adapter).find do |adapter|
          adapter.authenticate(username, password) { |authenticated| authenticated }
        end

        yield authenticated_adapter ? new(username, authenticated_adapter) : nil
      end
    end

    def initialize(username, adapter)
      @username = username
      @adapter = adapter
    end

    def ==(identity)
      adapter.normalize(username) == identity.adapter.normalize(identity.username)
    end
  end
end
