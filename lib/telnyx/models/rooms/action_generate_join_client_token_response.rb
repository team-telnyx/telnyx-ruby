# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Actions#generate_join_client_token
      class ActionGenerateJoinClientTokenResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse::Data]

        # @see Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute token
          #
          #   @return [String, nil]
          optional :token, String

          # @!attribute refresh_token
          #
          #   @return [String, nil]
          optional :refresh_token, String

          # @!attribute refresh_token_expires_at
          #   ISO 8601 timestamp when the refresh token expires.
          #
          #   @return [Time, nil]
          optional :refresh_token_expires_at, Time

          # @!attribute token_expires_at
          #   ISO 8601 timestamp when the token expires.
          #
          #   @return [Time, nil]
          optional :token_expires_at, Time

          # @!method initialize(token: nil, refresh_token: nil, refresh_token_expires_at: nil, token_expires_at: nil)
          #   @param token [String]
          #
          #   @param refresh_token [String]
          #
          #   @param refresh_token_expires_at [Time] ISO 8601 timestamp when the refresh token expires.
          #
          #   @param token_expires_at [Time] ISO 8601 timestamp when the token expires.
        end
      end
    end
  end
end
