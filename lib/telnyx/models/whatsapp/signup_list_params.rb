# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::Signup#list
      class SignupListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_created_at_gte
        #   Return sessions created at or after this time (RFC 3339)
        #
        #   @return [Time, nil]
        optional :filter_created_at_gte, Time

        # @!attribute filter_created_at_lte
        #   Return sessions created at or before this time (RFC 3339)
        #
        #   @return [Time, nil]
        optional :filter_created_at_lte, Time

        # @!attribute filter_customer_id
        #   Filter by the tech provider customer reference
        #
        #   @return [String, nil]
        optional :filter_customer_id, String

        # @!attribute filter_waba_id
        #   Filter by Meta WABA ID
        #
        #   @return [String, nil]
        optional :filter_waba_id, String

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(filter_created_at_gte: nil, filter_created_at_lte: nil, filter_customer_id: nil, filter_waba_id: nil, page_number: nil, page_size: nil, request_options: {})
        #   @param filter_created_at_gte [Time] Return sessions created at or after this time (RFC 3339)
        #
        #   @param filter_created_at_lte [Time] Return sessions created at or before this time (RFC 3339)
        #
        #   @param filter_customer_id [String] Filter by the tech provider customer reference
        #
        #   @param filter_waba_id [String] Filter by Meta WABA ID
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
