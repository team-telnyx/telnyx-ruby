# typed: strong

module Telnyx
  module Models
    class FqdnConnectionUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::FqdnConnectionUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::FqdnConnection)) }
      attr_reader :data

      sig { params(data: Telnyx::FqdnConnection::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::FqdnConnection::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::FqdnConnection }) }
      def to_hash
      end
    end
  end
end
