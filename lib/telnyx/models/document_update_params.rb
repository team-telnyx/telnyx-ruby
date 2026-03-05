# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Documents#update
    class DocumentUpdateParams < Telnyx::Models::DocServiceDocument
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute document_id
      #
      #   @return [String]
      required :document_id, String

      # @!method initialize(document_id:, request_options: {})
      #   @param document_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
