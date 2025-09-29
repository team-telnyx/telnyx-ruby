# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WellKnown#retrieve_protected_resource_metadata
    class WellKnownRetrieveProtectedResourceMetadataParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
