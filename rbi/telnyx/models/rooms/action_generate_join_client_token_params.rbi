# typed: strong

module Telnyx
  module Models
    module Rooms
      class ActionGenerateJoinClientTokenParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Rooms::ActionGenerateJoinClientTokenParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The time to live in seconds of the Refresh Token, after that time the Refresh
        # Token is invalid and can't be used to refresh Client Token.
        sig { returns(T.nilable(Integer)) }
        attr_reader :refresh_token_ttl_secs

        sig { params(refresh_token_ttl_secs: Integer).void }
        attr_writer :refresh_token_ttl_secs

        # The time to live in seconds of the Client Token, after that time the Client
        # Token is invalid and can't be used to join a Room.
        sig { returns(T.nilable(Integer)) }
        attr_reader :token_ttl_secs

        sig { params(token_ttl_secs: Integer).void }
        attr_writer :token_ttl_secs

        sig do
          params(
            refresh_token_ttl_secs: Integer,
            token_ttl_secs: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The time to live in seconds of the Refresh Token, after that time the Refresh
          # Token is invalid and can't be used to refresh Client Token.
          refresh_token_ttl_secs: nil,
          # The time to live in seconds of the Client Token, after that time the Client
          # Token is invalid and can't be used to join a Room.
          token_ttl_secs: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              refresh_token_ttl_secs: Integer,
              token_ttl_secs: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
