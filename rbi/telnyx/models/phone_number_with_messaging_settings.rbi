# typed: strong

module Telnyx
  module Models
    class PhoneNumberWithMessagingSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PhoneNumberWithMessagingSettings,
            Telnyx::Internal::AnyHash
          )
        end

      # High level health metrics about the number and it's messaging sending patterns.
      sig { returns(T.nilable(Telnyx::NumberHealthMetrics)) }
      attr_reader :health

      sig { params(health: Telnyx::NumberHealthMetrics::OrHash).void }
      attr_writer :health

      # The messaging product that the number is registered to use
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_product

      sig { params(messaging_product: String).void }
      attr_writer :messaging_product

      # Unique identifier for a messaging profile.
      sig { returns(T.nilable(String)) }
      attr_accessor :messaging_profile_id

      # The organization that owns this phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :organization_id

      sig { params(organization_id: String).void }
      attr_writer :organization_id

      # Tags associated with this phone number.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 3166-1 alpha-2 country code.
      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The messaging products that this number can be registered to use
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :eligible_messaging_products

      sig { params(eligible_messaging_products: T::Array[String]).void }
      attr_writer :eligible_messaging_products

      sig do
        returns(T.nilable(Telnyx::PhoneNumberWithMessagingSettings::Features))
      end
      attr_reader :features

      sig do
        params(
          features: Telnyx::PhoneNumberWithMessagingSettings::Features::OrHash
        ).void
      end
      attr_writer :features

      # +E.164 formatted phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # Identifies the type of the resource.
      sig do
        returns(
          T.nilable(
            Telnyx::PhoneNumberWithMessagingSettings::RecordType::TaggedSymbol
          )
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type:
            Telnyx::PhoneNumberWithMessagingSettings::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      # The messaging traffic or use case for which the number is currently configured.
      sig { returns(T.nilable(String)) }
      attr_reader :traffic_type

      sig { params(traffic_type: String).void }
      attr_writer :traffic_type

      # The type of the phone number
      sig do
        returns(
          T.nilable(
            Telnyx::PhoneNumberWithMessagingSettings::Type::TaggedSymbol
          )
        )
      end
      attr_reader :type

      sig do
        params(
          type: Telnyx::PhoneNumberWithMessagingSettings::Type::OrSymbol
        ).void
      end
      attr_writer :type

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          country_code: String,
          created_at: Time,
          eligible_messaging_products: T::Array[String],
          features: Telnyx::PhoneNumberWithMessagingSettings::Features::OrHash,
          health: Telnyx::NumberHealthMetrics::OrHash,
          messaging_product: String,
          messaging_profile_id: T.nilable(String),
          organization_id: String,
          phone_number: String,
          record_type:
            Telnyx::PhoneNumberWithMessagingSettings::RecordType::OrSymbol,
          tags: T::Array[String],
          traffic_type: String,
          type: Telnyx::PhoneNumberWithMessagingSettings::Type::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # ISO 3166-1 alpha-2 country code.
        country_code: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # The messaging products that this number can be registered to use
        eligible_messaging_products: nil,
        features: nil,
        # High level health metrics about the number and it's messaging sending patterns.
        health: nil,
        # The messaging product that the number is registered to use
        messaging_product: nil,
        # Unique identifier for a messaging profile.
        messaging_profile_id: nil,
        # The organization that owns this phone number.
        organization_id: nil,
        # +E.164 formatted phone number.
        phone_number: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Tags associated with this phone number.
        tags: nil,
        # The messaging traffic or use case for which the number is currently configured.
        traffic_type: nil,
        # The type of the phone number
        type: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            country_code: String,
            created_at: Time,
            eligible_messaging_products: T::Array[String],
            features: Telnyx::PhoneNumberWithMessagingSettings::Features,
            health: Telnyx::NumberHealthMetrics,
            messaging_product: String,
            messaging_profile_id: T.nilable(String),
            organization_id: String,
            phone_number: String,
            record_type:
              Telnyx::PhoneNumberWithMessagingSettings::RecordType::TaggedSymbol,
            tags: T::Array[String],
            traffic_type: String,
            type: Telnyx::PhoneNumberWithMessagingSettings::Type::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Features < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumberWithMessagingSettings::Features,
              Telnyx::Internal::AnyHash
            )
          end

        # The set of features available for a specific messaging use case (SMS or MMS).
        # Features can vary depending on the characteristics the phone number, as well as
        # its current product configuration.
        sig { returns(T.nilable(Telnyx::MessagingFeatureSet)) }
        attr_reader :mms

        sig { params(mms: T.nilable(Telnyx::MessagingFeatureSet::OrHash)).void }
        attr_writer :mms

        # The set of features available for a specific messaging use case (SMS or MMS).
        # Features can vary depending on the characteristics the phone number, as well as
        # its current product configuration.
        sig { returns(T.nilable(Telnyx::MessagingFeatureSet)) }
        attr_reader :sms

        sig { params(sms: T.nilable(Telnyx::MessagingFeatureSet::OrHash)).void }
        attr_writer :sms

        sig do
          params(
            mms: T.nilable(Telnyx::MessagingFeatureSet::OrHash),
            sms: T.nilable(Telnyx::MessagingFeatureSet::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # The set of features available for a specific messaging use case (SMS or MMS).
          # Features can vary depending on the characteristics the phone number, as well as
          # its current product configuration.
          mms: nil,
          # The set of features available for a specific messaging use case (SMS or MMS).
          # Features can vary depending on the characteristics the phone number, as well as
          # its current product configuration.
          sms: nil
        )
        end

        sig do
          override.returns(
            {
              mms: T.nilable(Telnyx::MessagingFeatureSet),
              sms: T.nilable(Telnyx::MessagingFeatureSet)
            }
          )
        end
        def to_hash
        end
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PhoneNumberWithMessagingSettings::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSAGING_PHONE_NUMBER =
          T.let(
            :messaging_phone_number,
            Telnyx::PhoneNumberWithMessagingSettings::RecordType::TaggedSymbol
          )
        MESSAGING_SETTINGS =
          T.let(
            :messaging_settings,
            Telnyx::PhoneNumberWithMessagingSettings::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PhoneNumberWithMessagingSettings::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of the phone number
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PhoneNumberWithMessagingSettings::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LONG_CODE =
          T.let(
            :"long-code",
            Telnyx::PhoneNumberWithMessagingSettings::Type::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :"toll-free",
            Telnyx::PhoneNumberWithMessagingSettings::Type::TaggedSymbol
          )
        SHORT_CODE =
          T.let(
            :"short-code",
            Telnyx::PhoneNumberWithMessagingSettings::Type::TaggedSymbol
          )
        LONGCODE =
          T.let(
            :longcode,
            Telnyx::PhoneNumberWithMessagingSettings::Type::TaggedSymbol
          )
        TOLLFREE =
          T.let(
            :tollfree,
            Telnyx::PhoneNumberWithMessagingSettings::Type::TaggedSymbol
          )
        SHORTCODE =
          T.let(
            :shortcode,
            Telnyx::PhoneNumberWithMessagingSettings::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PhoneNumberWithMessagingSettings::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
