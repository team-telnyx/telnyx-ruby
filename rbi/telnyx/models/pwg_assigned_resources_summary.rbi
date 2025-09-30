# typed: strong

module Telnyx
  module Models
    class PwgAssignedResourcesSummary < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PwgAssignedResourcesSummary, Telnyx::Internal::AnyHash)
        end

      # The current count of a resource type assigned to the Private Wireless Gateway.
      sig { returns(T.nilable(Integer)) }
      attr_reader :count

      sig { params(count: Integer).void }
      attr_writer :count

      # The type of the resource assigned to the Private Wireless Gateway.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # The summary of the resource that have been assigned to the Private Wireless
      # Gateway.
      sig do
        params(count: Integer, record_type: String).returns(T.attached_class)
      end
      def self.new(
        # The current count of a resource type assigned to the Private Wireless Gateway.
        count: nil,
        # The type of the resource assigned to the Private Wireless Gateway.
        record_type: nil
      )
      end

      sig { override.returns({ count: Integer, record_type: String }) }
      def to_hash
      end
    end
  end
end
