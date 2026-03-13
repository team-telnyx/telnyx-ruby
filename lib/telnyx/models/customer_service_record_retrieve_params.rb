# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CustomerServiceRecords#retrieve
    class CustomerServiceRecordRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute customer_service_record_id
      #
      #   @return [String]
      required :customer_service_record_id, String

      # @!method initialize(customer_service_record_id:, request_options: {})
      #   @param customer_service_record_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
