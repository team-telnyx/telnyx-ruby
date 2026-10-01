# frozen_string_literal: true

module Telnyx
  module Models
    class BpoAuthorizationInput < Telnyx::Internal::Type::BaseModel
      # @!attribute bpo_enterprise_id
      #   Enterprise id of an approved BPO (Business Process Outsourcer) account on your
      #   organization to authorize for this DIR.
      #
      #   @return [String]
      required :bpo_enterprise_id, String

      # @!attribute loa_document_id
      #   Id of the signed Letter of Authorization document (uploaded via the Telnyx
      #   Documents API) in which the Brand Owner authorizes this BPO.
      #
      #   @return [String]
      required :loa_document_id, String

      # @!method initialize(bpo_enterprise_id:, loa_document_id:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::BpoAuthorizationInput} for more details.
      #
      #   One authorization to include when creating or updating a DIR: an approved BPO
      #   (Business Process Outsourcer) account plus the signed Letter of Authorization
      #   the Brand Owner granted it.
      #
      #   @param bpo_enterprise_id [String] Enterprise id of an approved BPO (Business Process Outsourcer) account on your o
      #
      #   @param loa_document_id [String] Id of the signed Letter of Authorization document (uploaded via the Telnyx Docum
    end
  end
end
