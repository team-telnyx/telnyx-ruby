# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#create
    class PortingOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute phone_numbers
      #   The list of +E.164 formatted phone numbers
      #
      #   @return [Array<String>]
      required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute customer_group_reference
      #   A customer-specified group reference for customer bookkeeping purposes
      #
      #   @return [String, nil]
      optional :customer_group_reference, String

      # @!attribute customer_reference
      #   A customer-specified reference number for customer bookkeeping purposes
      #
      #   @return [String, nil]
      optional :customer_reference, String, nil?: true

      # @!method initialize(phone_numbers:, customer_group_reference: nil, customer_reference: nil, request_options: {})
      #   @param phone_numbers [Array<String>] The list of +E.164 formatted phone numbers
      #
      #   @param customer_group_reference [String] A customer-specified group reference for customer bookkeeping purposes
      #
      #   @param customer_reference [String, nil] A customer-specified reference number for customer bookkeeping purposes
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
