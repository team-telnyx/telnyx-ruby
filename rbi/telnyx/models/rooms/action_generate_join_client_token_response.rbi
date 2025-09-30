# typed: strong

module Telnyx
  module Models
    module Rooms
      class ActionGenerateJoinClientTokenResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :token

          sig { params(token: String).void }
          attr_writer :token

          sig { returns(T.nilable(String)) }
          attr_reader :refresh_token

          sig { params(refresh_token: String).void }
          attr_writer :refresh_token

          # ISO 8601 timestamp when the refresh token expires.
          sig { returns(T.nilable(Time)) }
          attr_reader :refresh_token_expires_at

          sig { params(refresh_token_expires_at: Time).void }
          attr_writer :refresh_token_expires_at

          # ISO 8601 timestamp when the token expires.
          sig { returns(T.nilable(Time)) }
          attr_reader :token_expires_at

          sig { params(token_expires_at: Time).void }
          attr_writer :token_expires_at

          sig do
            params(
              token: String,
              refresh_token: String,
              refresh_token_expires_at: Time,
              token_expires_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            token: nil,
            refresh_token: nil,
            # ISO 8601 timestamp when the refresh token expires.
            refresh_token_expires_at: nil,
            # ISO 8601 timestamp when the token expires.
            token_expires_at: nil
          )
          end

          sig do
            override.returns(
              {
                token: String,
                refresh_token: String,
                refresh_token_expires_at: Time,
                token_expires_at: Time
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
