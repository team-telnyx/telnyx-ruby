# typed: strong

module Telnyx
  module Models
    class PortingOrderDocuments < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderDocuments, Telnyx::Internal::AnyHash)
        end

      # Returned ID of the submitted Invoice via the Documents endpoint
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice

      # Returned ID of the submitted LOA via the Documents endpoint
      sig { returns(T.nilable(String)) }
      attr_accessor :loa

      # Can be specified directly or via the `requirement_group_id` parameter.
      sig do
        params(invoice: T.nilable(String), loa: T.nilable(String)).returns(
          T.attached_class
        )
      end
      def self.new(
        # Returned ID of the submitted Invoice via the Documents endpoint
        invoice: nil,
        # Returned ID of the submitted LOA via the Documents endpoint
        loa: nil
      )
      end

      sig do
        override.returns({ invoice: T.nilable(String), loa: T.nilable(String) })
      end
      def to_hash
      end
    end
  end
end
