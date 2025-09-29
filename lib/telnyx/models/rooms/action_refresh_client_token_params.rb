# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Actions#refresh_client_token
      class ActionRefreshClientTokenParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute refresh_token
        #
        #   @return [String]
        required :refresh_token, String

        # @!attribute token_ttl_secs
        #   The time to live in seconds of the Client Token, after that time the Client
        #   Token is invalid and can't be used to join a Room.
        #
        #   @return [Integer, nil]
        optional :token_ttl_secs, Integer

        # @!method initialize(refresh_token:, token_ttl_secs: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Rooms::ActionRefreshClientTokenParams} for more details.
        #
        #   @param refresh_token [String]
        #
        #   @param token_ttl_secs [Integer] The time to live in seconds of the Client Token, after that time the Client Toke
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
