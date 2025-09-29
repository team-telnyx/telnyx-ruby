# typed: strong

module Telnyx
  module Resources
    class Rooms
      class Actions
        # Synchronously create an Client Token to join a Room. Client Token is necessary
        # to join a Telnyx Room. Client Token will expire after `token_ttl_secs`, a
        # Refresh Token is also provided to refresh a Client Token, the Refresh Token
        # expires after `refresh_token_ttl_secs`.
        sig do
          params(
            room_id: String,
            refresh_token_ttl_secs: Integer,
            token_ttl_secs: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse
          )
        end
        def generate_join_client_token(
          # The unique identifier of a room.
          room_id,
          # The time to live in seconds of the Refresh Token, after that time the Refresh
          # Token is invalid and can't be used to refresh Client Token.
          refresh_token_ttl_secs: nil,
          # The time to live in seconds of the Client Token, after that time the Client
          # Token is invalid and can't be used to join a Room.
          token_ttl_secs: nil,
          request_options: {}
        )
        end

        # Synchronously refresh an Client Token to join a Room. Client Token is necessary
        # to join a Telnyx Room. Client Token will expire after `token_ttl_secs`.
        sig do
          params(
            room_id: String,
            refresh_token: String,
            token_ttl_secs: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Rooms::ActionRefreshClientTokenResponse)
        end
        def refresh_client_token(
          # The unique identifier of a room.
          room_id,
          refresh_token:,
          # The time to live in seconds of the Client Token, after that time the Client
          # Token is invalid and can't be used to join a Room.
          token_ttl_secs: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
