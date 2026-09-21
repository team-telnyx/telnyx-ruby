# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      # @see Telnyx::Resources::Compute::Funcs#retrieve_ship_inspection
      class FuncRetrieveShipInspectionParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:, request_options: {})
        #   @param id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
