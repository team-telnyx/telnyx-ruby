# typed: strong

module Telnyx
  module Models
    class IntegrationSecretCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::IntegrationSecretCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::IntegrationSecret) }
      attr_reader :data

      sig { params(data: Telnyx::IntegrationSecret::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::IntegrationSecret::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::IntegrationSecret }) }
      def to_hash
      end
    end
  end
end
