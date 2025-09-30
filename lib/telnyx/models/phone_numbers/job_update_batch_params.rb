# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Jobs#update_batch
      class JobUpdateBatchParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_numbers
        #   Array of phone number ids and/or phone numbers in E164 format to update. This
        #   parameter is required if no filter parameters are provided. If you want to
        #   update specific numbers rather than all numbers matching a filter, you must use
        #   this parameter. Each item must be either a valid phone number ID or a phone
        #   number in E164 format (e.g., '+13127367254').
        #
        #   @return [Array<String>]
        required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
        #   filter[status], filter[voice.connection_name],
        #   filter[voice.usage_payment_method], filter[billing_group_id],
        #   filter[emergency_address_id], filter[customer_reference]
        #
        #   @return [Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter, nil]
        optional :filter, -> { Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter }

        # @!attribute billing_group_id
        #   Identifies the billing group associated with the phone number.
        #
        #   @return [String, nil]
        optional :billing_group_id, String

        # @!attribute connection_id
        #   Identifies the connection associated with the phone number.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute customer_reference
        #   A customer reference string for customer look ups.
        #
        #   @return [String, nil]
        optional :customer_reference, String

        # @!attribute deletion_lock_enabled
        #   Indicates whether to enable or disable the deletion lock on each phone number.
        #   When enabled, this prevents the phone number from being deleted via the API or
        #   Telnyx portal.
        #
        #   @return [Boolean, nil]
        optional :deletion_lock_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute external_pin
        #   If someone attempts to port your phone number away from Telnyx and your phone
        #   number has an external PIN set, we will attempt to verify that you provided the
        #   correct external PIN to the winning carrier. Note that not all carriers
        #   cooperate with this security mechanism.
        #
        #   @return [String, nil]
        optional :external_pin, String

        # @!attribute hd_voice_enabled
        #   Indicates whether to enable or disable HD Voice on each phone number. HD Voice
        #   is a paid feature and may not be available for all phone numbers, more details
        #   about it can be found in the Telnyx support documentation.
        #
        #   @return [Boolean, nil]
        optional :hd_voice_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute tags
        #   A list of user-assigned tags to help organize phone numbers.
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute voice
        #
        #   @return [Telnyx::Models::PhoneNumbers::UpdateVoiceSettings, nil]
        optional :voice, -> { Telnyx::PhoneNumbers::UpdateVoiceSettings }

        # @!method initialize(phone_numbers:, filter: nil, billing_group_id: nil, connection_id: nil, customer_reference: nil, deletion_lock_enabled: nil, external_pin: nil, hd_voice_enabled: nil, tags: nil, voice: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::JobUpdateBatchParams} for more details.
        #
        #   @param phone_numbers [Array<String>] Array of phone number ids and/or phone numbers in E164 format to update. This pa
        #
        #   @param filter [Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[has_bundle]
        #
        #   @param billing_group_id [String] Identifies the billing group associated with the phone number.
        #
        #   @param connection_id [String] Identifies the connection associated with the phone number.
        #
        #   @param customer_reference [String] A customer reference string for customer look ups.
        #
        #   @param deletion_lock_enabled [Boolean] Indicates whether to enable or disable the deletion lock on each phone number. W
        #
        #   @param external_pin [String] If someone attempts to port your phone number away from Telnyx and your phone nu
        #
        #   @param hd_voice_enabled [Boolean] Indicates whether to enable or disable HD Voice on each phone number. HD Voice i
        #
        #   @param tags [Array<String>] A list of user-assigned tags to help organize phone numbers.
        #
        #   @param voice [Telnyx::Models::PhoneNumbers::UpdateVoiceSettings]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter::Status, nil]
          optional :status, enum: -> { Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status }

          # @!attribute tag
          #   Filter by phone number tags.
          #
          #   @return [String, nil]
          optional :tag, String

          # @!attribute voice_connection_name
          #   Filter by voice connection name pattern matching.
          #
          #   @return [Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceConnectionName, nil]
          optional :voice_connection_name,
                   -> { Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceConnectionName },
                   api_name: :"voice.connection_name"

          # @!attribute voice_usage_payment_method
          #   Filter by usage_payment_method.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod, nil]
          optional :voice_usage_payment_method,
                   enum: -> { Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod },
                   api_name: :"voice.usage_payment_method"

          # @!method initialize(billing_group_id: nil, connection_id: nil, customer_reference: nil, emergency_address_id: nil, has_bundle: nil, phone_number: nil, status: nil, tag: nil, voice_connection_name: nil, voice_usage_payment_method: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter} for more details.
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
          #   @param status [Symbol, Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter::Status] Filter by phone number status.
          #
          #   @param tag [String] Filter by phone number tags.
          #
          #   @param voice_connection_name [Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceConnectionName] Filter by voice connection name pattern matching.
          #
          #   @param voice_usage_payment_method [Symbol, Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod] Filter by usage_payment_method.

          # Filter by phone number status.
          #
          # @see Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter#status
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

          # @see Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter#voice_connection_name
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
          # @see Telnyx::Models::PhoneNumbers::JobUpdateBatchParams::Filter#voice_usage_payment_method
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
