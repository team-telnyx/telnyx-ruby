# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CustomerServiceRecords#create
    class CustomerServiceRecordCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute phone_number
      #   A valid US phone number in E164 format.
      #
      #   @return [String]
      required :phone_number, String

      # @!attribute additional_data
      #
      #   @return [Telnyx::Models::CustomerServiceRecordCreateParams::AdditionalData, nil]
      optional :additional_data, -> { Telnyx::CustomerServiceRecordCreateParams::AdditionalData }

      # @!attribute webhook_url
      #   Callback URL to receive webhook notifications.
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(phone_number:, additional_data: nil, webhook_url: nil, request_options: {})
      #   @param phone_number [String] A valid US phone number in E164 format.
      #
      #   @param additional_data [Telnyx::Models::CustomerServiceRecordCreateParams::AdditionalData]
      #
      #   @param webhook_url [String] Callback URL to receive webhook notifications.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class AdditionalData < Telnyx::Internal::Type::BaseModel
        # @!attribute account_number
        #   The account number of the customer service record.
        #
        #   @return [String, nil]
        optional :account_number, String

        # @!attribute address_line_1
        #   The first line of the address of the customer service record.
        #
        #   @return [String, nil]
        optional :address_line_1, String

        # @!attribute authorized_person_name
        #   The name of the authorized person.
        #
        #   @return [String, nil]
        optional :authorized_person_name, String

        # @!attribute billing_phone_number
        #   The billing phone number of the customer service record.
        #
        #   @return [String, nil]
        optional :billing_phone_number, String

        # @!attribute city
        #   The city of the customer service record.
        #
        #   @return [String, nil]
        optional :city, String

        # @!attribute customer_code
        #   The customer code of the customer service record.
        #
        #   @return [String, nil]
        optional :customer_code, String

        # @!attribute name
        #   The name of the administrator of CSR.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute pin
        #   The PIN of the customer service record.
        #
        #   @return [String, nil]
        optional :pin, String

        # @!attribute state
        #   The state of the customer service record.
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute zip_code
        #   The zip code of the customer service record.
        #
        #   @return [String, nil]
        optional :zip_code, String

        # @!method initialize(account_number: nil, address_line_1: nil, authorized_person_name: nil, billing_phone_number: nil, city: nil, customer_code: nil, name: nil, pin: nil, state: nil, zip_code: nil)
        #   @param account_number [String] The account number of the customer service record.
        #
        #   @param address_line_1 [String] The first line of the address of the customer service record.
        #
        #   @param authorized_person_name [String] The name of the authorized person.
        #
        #   @param billing_phone_number [String] The billing phone number of the customer service record.
        #
        #   @param city [String] The city of the customer service record.
        #
        #   @param customer_code [String] The customer code of the customer service record.
        #
        #   @param name [String] The name of the administrator of CSR.
        #
        #   @param pin [String] The PIN of the customer service record.
        #
        #   @param state [String] The state of the customer service record.
        #
        #   @param zip_code [String] The zip code of the customer service record.
      end
    end
  end
end
