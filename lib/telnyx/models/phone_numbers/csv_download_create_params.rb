# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::CsvDownloads#create
      class CsvDownloadCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute csv_format
        #   Which format to use when generating the CSV file. The default for backwards
        #   compatibility is 'V1'
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::CsvFormat, nil]
        optional :csv_format, enum: -> { Telnyx::PhoneNumbers::CsvDownloadCreateParams::CsvFormat }

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
        #   filter[status], filter[voice.connection_name],
        #   filter[voice.usage_payment_method], filter[billing_group_id],
        #   filter[emergency_address_id], filter[customer_reference]
        #
        #   @return [Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter, nil]
        optional :filter, -> { Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter }

        # @!method initialize(csv_format: nil, filter: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams} for more details.
        #
        #   @param csv_format [Symbol, Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::CsvFormat] Which format to use when generating the CSV file. The default for backwards comp
        #
        #   @param filter [Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[has_bundle]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Which format to use when generating the CSV file. The default for backwards
        # compatibility is 'V1'
        module CsvFormat
          extend Telnyx::Internal::Type::Enum

          V1 = :V1
          V2 = :V2

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute billing_group_id
          #   Filter by the billing_group_id associated with phone numbers. To filter to only
          #   phone numbers that have no billing group associated them, set the value of this
          #   filter to the string 'null'.
          #
          #   @return [String, nil]
          optional :billing_group_id, String

          # @!attribute connection_id
          #   Filter by connection_id.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute customer_reference
          #   Filter numbers via the customer_reference set.
          #
          #   @return [String, nil]
          optional :customer_reference, String

          # @!attribute emergency_address_id
          #   Filter by the emergency_address_id associated with phone numbers. To filter only
          #   phone numbers that have no emergency address associated with them, set the value
          #   of this filter to the string 'null'.
          #
          #   @return [String, nil]
          optional :emergency_address_id, String

          # @!attribute has_bundle
          #   Filter by phone number that have bundles.
          #
          #   @return [String, nil]
          optional :has_bundle, String

          # @!attribute phone_number
          #   Filter by phone number. Requires at least three digits. Non-numerical characters
          #   will result in no values being returned.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute status
          #   Filter by phone number status.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter::Status, nil]
          optional :status, enum: -> { Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status }

          # @!attribute tag
          #   Filter by phone number tags.
          #
          #   @return [String, nil]
          optional :tag, String

          # @!attribute voice_connection_name
          #   Filter by voice connection name pattern matching.
          #
          #   @return [Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceConnectionName, nil]
          optional :voice_connection_name,
                   -> { Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceConnectionName },
                   api_name: :"voice.connection_name"

          # @!attribute voice_usage_payment_method
          #   Filter by usage_payment_method.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod, nil]
          optional :voice_usage_payment_method,
                   enum: -> {
                     Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod
                   },
                   api_name: :"voice.usage_payment_method"

          # @!method initialize(billing_group_id: nil, connection_id: nil, customer_reference: nil, emergency_address_id: nil, has_bundle: nil, phone_number: nil, status: nil, tag: nil, voice_connection_name: nil, voice_usage_payment_method: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter} for more
          #   details.
          #
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
          #   filter[status], filter[voice.connection_name],
          #   filter[voice.usage_payment_method], filter[billing_group_id],
          #   filter[emergency_address_id], filter[customer_reference]
          #
          #   @param billing_group_id [String] Filter by the billing_group_id associated with phone numbers. To filter to only
          #
          #   @param connection_id [String] Filter by connection_id.
          #
          #   @param customer_reference [String] Filter numbers via the customer_reference set.
          #
          #   @param emergency_address_id [String] Filter by the emergency_address_id associated with phone numbers. To filter only
          #
          #   @param has_bundle [String] Filter by phone number that have bundles.
          #
          #   @param phone_number [String] Filter by phone number. Requires at least three digits.
          #
          #   @param status [Symbol, Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter::Status] Filter by phone number status.
          #
          #   @param tag [String] Filter by phone number tags.
          #
          #   @param voice_connection_name [Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceConnectionName] Filter by voice connection name pattern matching.
          #
          #   @param voice_usage_payment_method [Symbol, Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod] Filter by usage_payment_method.

          # Filter by phone number status.
          #
          # @see Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter#status
          module Status
            extend Telnyx::Internal::Type::Enum

            PURCHASE_PENDING = :"purchase-pending"
            PURCHASE_FAILED = :"purchase-failed"
            PORT_PENDING = :"port-pending"
            ACTIVE = :active
            DELETED = :deleted
            PORT_FAILED = :"port-failed"
            EMERGENCY_ONLY = :"emergency-only"
            PORTED_OUT = :"ported-out"
            PORT_OUT_PENDING = :"port-out-pending"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter#voice_connection_name
          class VoiceConnectionName < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   Filter contains connection name. Requires at least three characters.
            #
            #   @return [String, nil]
            optional :contains, String

            # @!attribute ends_with
            #   Filter ends with connection name. Requires at least three characters.
            #
            #   @return [String, nil]
            optional :ends_with, String

            # @!attribute eq
            #   Filter by connection name.
            #
            #   @return [String, nil]
            optional :eq, String

            # @!attribute starts_with
            #   Filter starts with connection name. Requires at least three characters.
            #
            #   @return [String, nil]
            optional :starts_with, String

            # @!method initialize(contains: nil, ends_with: nil, eq: nil, starts_with: nil)
            #   Filter by voice connection name pattern matching.
            #
            #   @param contains [String] Filter contains connection name. Requires at least three characters.
            #
            #   @param ends_with [String] Filter ends with connection name. Requires at least three characters.
            #
            #   @param eq [String] Filter by connection name.
            #
            #   @param starts_with [String] Filter starts with connection name. Requires at least three characters.
          end

          # Filter by usage_payment_method.
          #
          # @see Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter#voice_usage_payment_method
          module VoiceUsagePaymentMethod
            extend Telnyx::Internal::Type::Enum

            PAY_PER_MINUTE = :"pay-per-minute"
            CHANNEL = :channel

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
