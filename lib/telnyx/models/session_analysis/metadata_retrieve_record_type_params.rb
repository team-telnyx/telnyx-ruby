# frozen_string_literal: true

module Telnyx
  module Models
    module SessionAnalysis
      # @see Telnyx::Resources::SessionAnalysis::Metadata#retrieve_record_type
      class MetadataRetrieveRecordTypeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute record_type
        #
        #   @return [String]
        required :record_type, String

        # @!method initialize(record_type:, request_options: {})
        #   @param record_type [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
