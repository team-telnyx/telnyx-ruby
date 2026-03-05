# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::AdditionalDocuments#delete
      class AdditionalDocumentDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute additional_document_id
        #
        #   @return [String]
        required :additional_document_id, String

        # @!method initialize(id:, additional_document_id:, request_options: {})
        #   @param id [String]
        #   @param additional_document_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
