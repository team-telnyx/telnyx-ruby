# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Recordings
          # @return [Telnyx::Resources::Texml::Accounts::Recordings::Json]
          attr_reader :json

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @json = Telnyx::Resources::Texml::Accounts::Recordings::Json.new(client: client)
          end
        end
      end
    end
  end
end
