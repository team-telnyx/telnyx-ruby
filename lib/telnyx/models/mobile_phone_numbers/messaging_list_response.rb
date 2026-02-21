# frozen_string_literal: true

module Telnyx
  module Models
    module MobilePhoneNumbers
      # @see Telnyx::Resources::MobilePhoneNumbers::Messaging#list
      class MessagingListResponse < Telnyx::Internal::Type::BaseModel
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

        # @!attribute organization_id
        #   The organization that owns this phone number.
        #
        #   @return [String, nil]
        optional :organization_id, String

        # @!attribute tags
        #   Tags associated with this phone number.
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

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

          # @!attribute features
          #
          #   @return [Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Features, nil]
          optional :features, -> { Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Features }

          # @!attribute phone_number
          #   +E.164 formatted phone number.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [Symbol, Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::RecordType, nil]
          optional :record_type, enum: -> { Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::RecordType }

          # @!attribute traffic_type
          #   The messaging traffic or use case for which the number is currently configured.
          #
          #   @return [String, nil]
          optional :traffic_type, String

          # @!attribute type
          #   The type of the phone number
          #
          #   @return [Symbol, Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Type, nil]
          optional :type, enum: -> { Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Type }

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the resource was updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time
        end

        # @!method initialize(id: nil, country_code: nil, created_at: nil, features: nil, messaging_product: nil, messaging_profile_id: nil, organization_id: nil, phone_number: nil, record_type: nil, tags: nil, traffic_type: nil, type: nil, updated_at: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param country_code [String] ISO 3166-1 alpha-2 country code.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param features [Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Features]
        #
        #   @param messaging_product [String] The messaging product that the number is registered to use
        #
        #   @param messaging_profile_id [String, nil] Unique identifier for a messaging profile.
        #
        #   @param organization_id [String] The organization that owns this phone number.
        #
        #   @param phone_number [String] +E.164 formatted phone number.
        #
        #   @param record_type [Symbol, Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::RecordType] Identifies the type of the resource.
        #
        #   @param tags [Array<String>] Tags associated with this phone number.
        #
        #   @param traffic_type [String] The messaging traffic or use case for which the number is currently configured.
        #
        #   @param type [Symbol, Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Type] The type of the phone number
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

        # @see Telnyx::Models::MobilePhoneNumbers::MessagingListResponse#features
        class Features < Telnyx::Internal::Type::BaseModel
          # @!attribute sms
          #   The set of features available for a specific messaging use case (SMS or MMS).
          #   Features can vary depending on the characteristics the phone number, as well as
          #   its current product configuration.
          #
          #   @return [Telnyx::Models::MessagingFeatureSet, nil]
          optional :sms, -> { Telnyx::MessagingFeatureSet }, nil?: true

          # @!method initialize(sms: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Features} for more
          #   details.
          #
          #   @param sms [Telnyx::Models::MessagingFeatureSet, nil] The set of features available for a specific messaging use case (SMS or MMS). Fe
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::MobilePhoneNumbers::MessagingListResponse#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          MESSAGING_PHONE_NUMBER = :messaging_phone_number
          MESSAGING_SETTINGS = :messaging_settings

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of the phone number
        #
        # @see Telnyx::Models::MobilePhoneNumbers::MessagingListResponse#type
        module Type
          extend Telnyx::Internal::Type::Enum

          LONGCODE = :longcode

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
