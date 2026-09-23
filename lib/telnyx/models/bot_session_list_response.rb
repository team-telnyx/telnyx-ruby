# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BotSessions#list
    class BotSessionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::BotSessionListResponse::Data]
      required :data, -> { Telnyx::Models::BotSessionListResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::BotSessionListResponse::Data]

      # @see Telnyx::Models::BotSessionListResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute api_v2_token
        #   API v2 session token for the signed-in user. Use it as a bearer token on
        #   authenticated endpoints.
        #
        #   @return [String]
        required :api_v2_token, String

        # @!method initialize(api_v2_token:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::BotSessionListResponse::Data} for more details.
        #
        #   @param api_v2_token [String] API v2 session token for the signed-in user. Use it as a bearer token on authent
      end
    end
  end
end
