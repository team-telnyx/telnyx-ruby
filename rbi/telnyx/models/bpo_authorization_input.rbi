# typed: strong

module Telnyx
  module Models
    class BpoAuthorizationInput < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::BpoAuthorizationInput, Telnyx::Internal::AnyHash)
        end

      # Enterprise id of an approved BPO (Business Process Outsourcer) account on your
      # organization to authorize for this DIR.
      sig { returns(String) }
      attr_accessor :bpo_enterprise_id

      # Id of the signed Letter of Authorization document (uploaded via the Telnyx
      # Documents API) in which the Brand Owner authorizes this BPO.
      sig { returns(String) }
      attr_accessor :loa_document_id

      # One authorization to include when creating or updating a DIR: an approved BPO
      # (Business Process Outsourcer) account plus the signed Letter of Authorization
      # the Brand Owner granted it.
      sig do
        params(bpo_enterprise_id: String, loa_document_id: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Enterprise id of an approved BPO (Business Process Outsourcer) account on your
        # organization to authorize for this DIR.
        bpo_enterprise_id:,
        # Id of the signed Letter of Authorization document (uploaded via the Telnyx
        # Documents API) in which the Brand Owner authorizes this BPO.
        loa_document_id:
      )
      end

      sig do
        override.returns({ bpo_enterprise_id: String, loa_document_id: String })
      end
      def to_hash
      end
    end
  end
end
