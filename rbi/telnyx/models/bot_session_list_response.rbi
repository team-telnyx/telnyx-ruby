# typed: strong

module Telnyx
  module Models
    class BotSessionListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::BotSessionListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::BotSessionListResponse::Data) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::BotSessionListResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::BotSessionListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns({ data: Telnyx::Models::BotSessionListResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BotSessionListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # API v2 session token for the signed-in user. Use it as a bearer token on
        # authenticated endpoints.
        sig { returns(String) }
        attr_accessor :api_v2_token

        sig { params(api_v2_token: String).returns(T.attached_class) }
        def self.new(
          # API v2 session token for the signed-in user. Use it as a bearer token on
          # authenticated endpoints.
          api_v2_token:
        )
        end

        sig { override.returns({ api_v2_token: String }) }
        def to_hash
        end
      end
    end
  end
end
