# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DocumentLinks#list
    class DocumentLinkListResponse < Telnyx::Models::DocServiceRecord
      response_only do
        # @!attribute document_id
        #   Identifies the associated document.
        #
        #   @return [String, nil]
        optional :document_id, String

        # @!attribute linked_record_type
        #   The linked resource's record type.
        #
        #   @return [String, nil]
        optional :linked_record_type, String

        # @!attribute linked_resource_id
        #   Identifies the linked resource.
        #
        #   @return [String, nil]
        optional :linked_resource_id, String
      end

      # @!method initialize(document_id: nil, linked_record_type: nil, linked_resource_id: nil)
      #   @param document_id [String] Identifies the associated document.
      #
      #   @param linked_record_type [String] The linked resource's record type.
      #
      #   @param linked_resource_id [String] Identifies the linked resource.
    end
  end
end
