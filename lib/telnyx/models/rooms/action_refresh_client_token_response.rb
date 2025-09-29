# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Actions#refresh_client_token
      class ActionRefreshClientTokenResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Rooms::ActionRefreshClientTokenResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Rooms::ActionRefreshClientTokenResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Rooms::ActionRefreshClientTokenResponse::Data]

        # @see Telnyx::Models::Rooms::ActionRefreshClientTokenResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute token
          #
          #   @return [String, nil]
          optional :token, String

          # @!attribute token_expires_at
          #   ISO 8601 timestamp when the token expires.
          #
          #   @return [Time, nil]
          optional :token_expires_at, Time

          # @!method initialize(token: nil, token_expires_at: nil)
          #   @param token [String]
          #
          #   @param token_expires_at [Time] ISO 8601 timestamp when the token expires.
        end
      end
    end
  end
end
