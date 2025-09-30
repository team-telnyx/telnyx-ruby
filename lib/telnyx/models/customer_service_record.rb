# frozen_string_literal: true

module Telnyx
  module Models
    class CustomerServiceRecord < Telnyx::Internal::Type::BaseModel
      # @!attribute error_message
      #   The error message in case status is `failed`. This field would be null in case
      #   of `pending` or `completed` status.
      #
      #   @return [String, nil]
      optional :error_message, String

      # @!attribute phone_number
      #   The phone number of the customer service record.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute result
      #   The result of the CSR request. This field would be null in case of `pending` or
      #   `failed` status.
      #
      #   @return [Telnyx::Models::CustomerServiceRecord::Result, nil]
      optional :result, -> { Telnyx::CustomerServiceRecord::Result }

      # @!attribute status
      #   The status of the customer service record
      #
      #   @return [Symbol, Telnyx::Models::CustomerServiceRecord::Status, nil]
      optional :status, enum: -> { Telnyx::CustomerServiceRecord::Status }

      response_only do
        # @!attribute id
        #   Uniquely identifies this customer service record
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, created_at: nil, error_message: nil, phone_number: nil, record_type: nil, result: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CustomerServiceRecord} for more details.
      #
      #   @param id [String] Uniquely identifies this customer service record
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param error_message [String] The error message in case status is `failed`. This field would be null in case o
      #
      #   @param phone_number [String] The phone number of the customer service record.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param result [Telnyx::Models::CustomerServiceRecord::Result] The result of the CSR request. This field would be null in case of `pending` or
      #
      #   @param status [Symbol, Telnyx::Models::CustomerServiceRecord::Status] The status of the customer service record
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was created.

      # @see Telnyx::Models::CustomerServiceRecord#result
      class Result < Telnyx::Internal::Type::BaseModel
        # @!attribute address
        #   The address of the customer service record
        #
        #   @return [Telnyx::Models::CustomerServiceRecord::Result::Address, nil]
        optional :address, -> { Telnyx::CustomerServiceRecord::Result::Address }

        # @!attribute admin
        #   The admin of the customer service record.
        #
        #   @return [Telnyx::Models::CustomerServiceRecord::Result::Admin, nil]
        optional :admin, -> { Telnyx::CustomerServiceRecord::Result::Admin }

        # @!attribute associated_phone_numbers
        #   The associated phone numbers of the customer service record.
        #
        #   @return [Array<String>, nil]
        optional :associated_phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute carrier_name
        #   The name of the carrier that the customer service record is for.
        #
        #   @return [String, nil]
        optional :carrier_name, String

        # @!method initialize(address: nil, admin: nil, associated_phone_numbers: nil, carrier_name: nil)
        #   The result of the CSR request. This field would be null in case of `pending` or
        #   `failed` status.
        #
        #   @param address [Telnyx::Models::CustomerServiceRecord::Result::Address] The address of the customer service record
        #
        #   @param admin [Telnyx::Models::CustomerServiceRecord::Result::Admin] The admin of the customer service record.
        #
        #   @param associated_phone_numbers [Array<String>] The associated phone numbers of the customer service record.
        #
        #   @param carrier_name [String] The name of the carrier that the customer service record is for.

        # @see Telnyx::Models::CustomerServiceRecord::Result#address
        class Address < Telnyx::Internal::Type::BaseModel
          # @!attribute administrative_area
          #   The state of the address
          #
          #   @return [String, nil]
          optional :administrative_area, String

          # @!attribute full_address
          #   The full address
          #
          #   @return [String, nil]
          optional :full_address, String

          # @!attribute locality
          #   The city of the address
          #
          #   @return [String, nil]
          optional :locality, String

          # @!attribute postal_code
          #   The zip code of the address
          #
          #   @return [String, nil]
          optional :postal_code, String

          # @!attribute street_address
          #   The street address
          #
          #   @return [String, nil]
          optional :street_address, String

          # @!method initialize(administrative_area: nil, full_address: nil, locality: nil, postal_code: nil, street_address: nil)
          #   The address of the customer service record
          #
          #   @param administrative_area [String] The state of the address
          #
          #   @param full_address [String] The full address
          #
          #   @param locality [String] The city of the address
          #
          #   @param postal_code [String] The zip code of the address
          #
          #   @param street_address [String] The street address
        end

        # @see Telnyx::Models::CustomerServiceRecord::Result#admin
        class Admin < Telnyx::Internal::Type::BaseModel
          # @!attribute account_number
          #   The account number of the customer service record.
          #
          #   @return [String, nil]
          optional :account_number, String

          # @!attribute authorized_person_name
          #   The authorized person name of the customer service record.
          #
          #   @return [String, nil]
          optional :authorized_person_name, String

          # @!attribute billing_phone_number
          #   The billing phone number of the customer service record.
          #
          #   @return [String, nil]
          optional :billing_phone_number, String

          # @!attribute name
          #   The name of the customer service record.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(account_number: nil, authorized_person_name: nil, billing_phone_number: nil, name: nil)
          #   The admin of the customer service record.
          #
          #   @param account_number [String] The account number of the customer service record.
          #
          #   @param authorized_person_name [String] The authorized person name of the customer service record.
          #
          #   @param billing_phone_number [String] The billing phone number of the customer service record.
          #
          #   @param name [String] The name of the customer service record.
        end
      end

      # The status of the customer service record
      #
      # @see Telnyx::Models::CustomerServiceRecord#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        COMPLETED = :completed
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
