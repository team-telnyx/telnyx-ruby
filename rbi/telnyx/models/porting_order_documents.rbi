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
      attr_reader :invoice

      sig { params(invoice: String).void }
      attr_writer :invoice

      # Returned ID of the submitted LOA via the Documents endpoint
      sig { returns(T.nilable(String)) }
      attr_reader :loa

      sig { params(loa: String).void }
      attr_writer :loa

      # Can be specified directly or via the `requirement_group_id` parameter.
      sig { params(invoice: String, loa: String).returns(T.attached_class) }
      def self.new(
        # Returned ID of the submitted Invoice via the Documents endpoint
        invoice: nil,
        # Returned ID of the submitted LOA via the Documents endpoint
        loa: nil
      )
      end

      sig { override.returns({ invoice: String, loa: String }) }
      def to_hash
      end
    end
  end
end
