# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Actions#generate_join_client_token
      class ActionGenerateJoinClientTokenParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute refresh_token_ttl_secs
        #   The time to live in seconds of the Refresh Token, after that time the Refresh
        #   Token is invalid and can't be used to refresh Client Token.
        #
        #   @return [Integer, nil]
        optional :refresh_token_ttl_secs, Integer

        # @!attribute token_ttl_secs
        #   The time to live in seconds of the Client Token, after that time the Client
        #   Token is invalid and can't be used to join a Room.
        #
        #   @return [Integer, nil]
        optional :token_ttl_secs, Integer

        # @!method initialize(refresh_token_ttl_secs: nil, token_ttl_secs: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Rooms::ActionGenerateJoinClientTokenParams} for more details.
        #
        #   @param refresh_token_ttl_secs [Integer] The time to live in seconds of the Refresh Token, after that time the Refresh To
        #
        #   @param token_ttl_secs [Integer] The time to live in seconds of the Client Token, after that time the Client Toke
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
