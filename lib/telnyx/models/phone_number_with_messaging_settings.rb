# frozen_string_literal: true

module Telnyx
  module Models
    class PhoneNumberWithMessagingSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute health
      #   High level health metrics about the number and it's messaging sending patterns.
      #
      #   @return [Telnyx::Models::NumberHealthMetrics, nil]
      optional :health, -> { Telnyx::NumberHealthMetrics }

      # @!attribute messaging_product
      #   The messaging product that the number is registered to use
      #
      #   @return [String, nil]
      optional :messaging_product, String

      # @!attribute messaging_profile_id
      #   Unique identifier for a messaging profile.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String, nil?: true

      response_only do
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute country_code
        #   ISO 3166-1 alpha-2 country code.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute eligible_messaging_products
        #   The messaging products that this number can be registered to use
        #
        #   @return [Array<String>, nil]
        optional :eligible_messaging_products, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute features
        #
        #   @return [Telnyx::Models::PhoneNumberWithMessagingSettings::Features, nil]
        optional :features, -> { Telnyx::PhoneNumberWithMessagingSettings::Features }

        # @!attribute phone_number
        #   +E.164 formatted phone number.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumberWithMessagingSettings::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::PhoneNumberWithMessagingSettings::RecordType }

        # @!attribute traffic_type
        #   The messaging traffic or use case for which the number is currently configured.
        #
        #   @return [String, nil]
        optional :traffic_type, String

        # @!attribute type
        #   The type of the phone number
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumberWithMessagingSettings::Type, nil]
        optional :type, enum: -> { Telnyx::PhoneNumberWithMessagingSettings::Type }

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, country_code: nil, created_at: nil, eligible_messaging_products: nil, features: nil, health: nil, messaging_product: nil, messaging_profile_id: nil, phone_number: nil, record_type: nil, traffic_type: nil, type: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PhoneNumberWithMessagingSettings} for more details.
      #
      #   @param id [String] Identifies the type of resource.
      #
      #   @param country_code [String] ISO 3166-1 alpha-2 country code.
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param eligible_messaging_products [Array<String>] The messaging products that this number can be registered to use
      #
      #   @param features [Telnyx::Models::PhoneNumberWithMessagingSettings::Features]
      #
      #   @param health [Telnyx::Models::NumberHealthMetrics] High level health metrics about the number and it's messaging sending patterns.
      #
      #   @param messaging_product [String] The messaging product that the number is registered to use
      #
      #   @param messaging_profile_id [String, nil] Unique identifier for a messaging profile.
      #
      #   @param phone_number [String] +E.164 formatted phone number.
      #
      #   @param record_type [Symbol, Telnyx::Models::PhoneNumberWithMessagingSettings::RecordType] Identifies the type of the resource.
      #
      #   @param traffic_type [String] The messaging traffic or use case for which the number is currently configured.
      #
      #   @param type [Symbol, Telnyx::Models::PhoneNumberWithMessagingSettings::Type] The type of the phone number
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

      # @see Telnyx::Models::PhoneNumberWithMessagingSettings#features
      class Features < Telnyx::Internal::Type::BaseModel
        # @!attribute mms
        #   The set of features available for a specific messaging use case (SMS or MMS).
        #   Features can vary depending on the characteristics the phone number, as well as
        #   its current product configuration.
        #
        #   @return [Telnyx::Models::MessagingFeatureSet, nil]
        optional :mms, -> { Telnyx::MessagingFeatureSet }, nil?: true

        # @!attribute sms
        #   The set of features available for a specific messaging use case (SMS or MMS).
        #   Features can vary depending on the characteristics the phone number, as well as
        #   its current product configuration.
        #
        #   @return [Telnyx::Models::MessagingFeatureSet, nil]
        optional :sms, -> { Telnyx::MessagingFeatureSet }, nil?: true

        # @!method initialize(mms: nil, sms: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumberWithMessagingSettings::Features} for more details.
        #
        #   @param mms [Telnyx::Models::MessagingFeatureSet, nil] The set of features available for a specific messaging use case (SMS or MMS). Fe
        #
        #   @param sms [Telnyx::Models::MessagingFeatureSet, nil] The set of features available for a specific messaging use case (SMS or MMS). Fe
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::PhoneNumberWithMessagingSettings#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        MESSAGING_PHONE_NUMBER = :messaging_phone_number
        MESSAGING_SETTINGS = :messaging_settings

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of the phone number
      #
      # @see Telnyx::Models::PhoneNumberWithMessagingSettings#type
      module Type
        extend Telnyx::Internal::Type::Enum

        LONG_CODE = :"long-code"
        TOLL_FREE = :"toll-free"
        SHORT_CODE = :"short-code"
        LONGCODE = :longcode
        TOLLFREE = :tollfree
        SHORTCODE = :shortcode

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
