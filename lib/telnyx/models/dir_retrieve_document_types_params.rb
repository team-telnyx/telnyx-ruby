# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#retrieve_document_types
    class DirRetrieveDocumentTypesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
