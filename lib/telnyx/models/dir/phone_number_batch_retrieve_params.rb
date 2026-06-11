# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumberBatches#retrieve
      class PhoneNumberBatchRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute batch_id
        #
        #   @return [String]
        required :batch_id, String

        # @!method initialize(dir_id:, batch_id:, request_options: {})
        #   @param dir_id [String]
        #   @param batch_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
