# typed: strong

module Telnyx
  module Models
    module Rooms
      class ActionRefreshClientTokenParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Rooms::ActionRefreshClientTokenParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :refresh_token

        # The time to live in seconds of the Client Token, after that time the Client
        # Token is invalid and can't be used to join a Room.
        sig { returns(T.nilable(Integer)) }
        attr_reader :token_ttl_secs

        sig { params(token_ttl_secs: Integer).void }
        attr_writer :token_ttl_secs

        sig do
          params(
            refresh_token: String,
            token_ttl_secs: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          refresh_token:,
          # The time to live in seconds of the Client Token, after that time the Client
          # Token is invalid and can't be used to join a Room.
          token_ttl_secs: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              refresh_token: String,
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
