# frozen_string_literal: true

module Telnyx
  module Resources
    class Rooms
      class Actions
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Rooms::ActionGenerateJoinClientTokenParams} for more details.
        #
        # Synchronously create an Client Token to join a Room. Client Token is necessary
        # to join a Telnyx Room. Client Token will expire after `token_ttl_secs`, a
        # Refresh Token is also provided to refresh a Client Token, the Refresh Token
        # expires after `refresh_token_ttl_secs`.
        #
        # @overload generate_join_client_token(room_id, refresh_token_ttl_secs: nil, token_ttl_secs: nil, request_options: {})
        #
        # @param room_id [String] The unique identifier of a room.
        #
        # @param refresh_token_ttl_secs [Integer] The time to live in seconds of the Refresh Token, after that time the Refresh To
        #
        # @param token_ttl_secs [Integer] The time to live in seconds of the Client Token, after that time the Client Toke
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse]
        #
        # @see Telnyx::Models::Rooms::ActionGenerateJoinClientTokenParams
        def generate_join_client_token(room_id, params = {})
          parsed, options = Telnyx::Rooms::ActionGenerateJoinClientTokenParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["rooms/%1$s/actions/generate_join_client_token", room_id],
            body: parsed,
            model: Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Rooms::ActionRefreshClientTokenParams} for more details.
        #
        # Synchronously refresh an Client Token to join a Room. Client Token is necessary
        # to join a Telnyx Room. Client Token will expire after `token_ttl_secs`.
        #
        # @overload refresh_client_token(room_id, refresh_token:, token_ttl_secs: nil, request_options: {})
        #
        # @param room_id [String] The unique identifier of a room.
        #
        # @param refresh_token [String]
        #
        # @param token_ttl_secs [Integer] The time to live in seconds of the Client Token, after that time the Client Toke
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rooms::ActionRefreshClientTokenResponse]
        #
        # @see Telnyx::Models::Rooms::ActionRefreshClientTokenParams
        def refresh_client_token(room_id, params)
          parsed, options = Telnyx::Rooms::ActionRefreshClientTokenParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["rooms/%1$s/actions/refresh_client_token", room_id],
            body: parsed,
            model: Telnyx::Models::Rooms::ActionRefreshClientTokenResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
