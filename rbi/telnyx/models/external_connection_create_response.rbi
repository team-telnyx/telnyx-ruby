# typed: strong

module Telnyx
  module Models
    class ExternalConnectionCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ExternalConnectionCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ExternalConnection)) }
      attr_reader :data

      sig { params(data: Telnyx::ExternalConnection::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ExternalConnection::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ExternalConnection }) }
      def to_hash
      end
    end
  end
end
