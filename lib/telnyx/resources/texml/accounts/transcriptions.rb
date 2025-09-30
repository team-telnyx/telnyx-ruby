# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Transcriptions
          # @return [Telnyx::Resources::Texml::Accounts::Transcriptions::Json]
          attr_reader :json

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @json = Telnyx::Resources::Texml::Accounts::Transcriptions::Json.new(client: client)
          end
        end
      end
    end
  end
end
