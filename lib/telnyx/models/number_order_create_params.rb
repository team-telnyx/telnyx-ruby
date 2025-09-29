# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrders#create
    class NumberOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute billing_group_id
      #   Identifies the billing group associated with the phone number.
      #
      #   @return [String, nil]
      optional :billing_group_id, String

      # @!attribute connection_id
      #   Identifies the connection associated with this phone number.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute messaging_profile_id
      #   Identifies the messaging profile associated with the phone number.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute phone_numbers
      #
      #   @return [Array<Telnyx::Models::NumberOrderCreateParams::PhoneNumber>, nil]
      optional :phone_numbers,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NumberOrderCreateParams::PhoneNumber] }

      # @!method initialize(billing_group_id: nil, connection_id: nil, customer_reference: nil, messaging_profile_id: nil, phone_numbers: nil, request_options: {})
      #   @param billing_group_id [String] Identifies the billing group associated with the phone number.
      #
      #   @param connection_id [String] Identifies the connection associated with this phone number.
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param messaging_profile_id [String] Identifies the messaging profile associated with the phone number.
      #
      #   @param phone_numbers [Array<Telnyx::Models::NumberOrderCreateParams::PhoneNumber>]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class PhoneNumber < Telnyx::Internal::Type::BaseModel
        # @!attribute phone_number
        #   e164_phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute bundle_id
        #   ID of bundle to associate the number to
        #
        #   @return [String, nil]
        optional :bundle_id, String

        # @!attribute requirement_group_id
        #   ID of requirement group to use to satisfy number requirements
        #
        #   @return [String, nil]
        optional :requirement_group_id, String

        # @!method initialize(phone_number:, bundle_id: nil, requirement_group_id: nil)
        #   @param phone_number [String] e164_phone_number
        #
        #   @param bundle_id [String] ID of bundle to associate the number to
        #
        #   @param requirement_group_id [String] ID of requirement group to use to satisfy number requirements
      end
    end
  end
end
