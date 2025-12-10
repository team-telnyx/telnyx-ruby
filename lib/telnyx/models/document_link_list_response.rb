# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DocumentLinks#list
    class DocumentLinkListResponse < Telnyx::Internal::Type::BaseModel
      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @return [String, nil]
        optional :created_at, String

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

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @return [String, nil]
        optional :updated_at, String
      end

      # @!method initialize(id: nil, created_at: nil, document_id: nil, linked_record_type: nil, linked_resource_id: nil, record_type: nil, updated_at: nil)
      #   @param id [String] Identifies the resource.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param document_id [String] Identifies the associated document.
      #
      #   @param linked_record_type [String] The linked resource's record type.
      #
      #   @param linked_resource_id [String] Identifies the linked resource.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
    end
  end
end
