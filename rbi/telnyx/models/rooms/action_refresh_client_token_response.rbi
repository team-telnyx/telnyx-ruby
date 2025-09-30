# typed: strong

module Telnyx
  module Models
    module Rooms
      class ActionRefreshClientTokenResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Rooms::ActionRefreshClientTokenResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Rooms::ActionRefreshClientTokenResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Rooms::ActionRefreshClientTokenResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Rooms::ActionRefreshClientTokenResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Rooms::ActionRefreshClientTokenResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Rooms::ActionRefreshClientTokenResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :token

          sig { params(token: String).void }
          attr_writer :token

          # ISO 8601 timestamp when the token expires.
          sig { returns(T.nilable(Time)) }
          attr_reader :token_expires_at

          sig { params(token_expires_at: Time).void }
          attr_writer :token_expires_at

          sig do
            params(token: String, token_expires_at: Time).returns(
              T.attached_class
            )
          end
          def self.new(
            token: nil,
            # ISO 8601 timestamp when the token expires.
            token_expires_at: nil
          )
          end

          sig { override.returns({ token: String, token_expires_at: Time }) }
          def to_hash
          end
        end
      end
    end
  end
end
