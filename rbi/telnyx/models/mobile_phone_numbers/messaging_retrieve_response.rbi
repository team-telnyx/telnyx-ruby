# typed: strong

module Telnyx
  module Models
    module MobilePhoneNumbers
      class MessagingRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The messaging product that the number is registered to use
          sig { returns(T.nilable(String)) }
          attr_reader :messaging_product

          sig { params(messaging_product: String).void }
          attr_writer :messaging_product

          # Unique identifier for a messaging profile.
          sig { returns(T.nilable(String)) }
          attr_accessor :messaging_profile_id

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

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Features
              )
            )
          end
          attr_reader :features

          sig do
            params(
              features:
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Features::OrHash
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
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::RecordType::TaggedSymbol
              )
            )
          end
          attr_reader :record_type

          sig do
            params(
              record_type:
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::RecordType::OrSymbol
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
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Type::OrSymbol
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
              features:
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Features::OrHash,
              messaging_product: String,
              messaging_profile_id: T.nilable(String),
              phone_number: String,
              record_type:
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::RecordType::OrSymbol,
              traffic_type: String,
              type:
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Type::OrSymbol,
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
            features: nil,
            # The messaging product that the number is registered to use
            messaging_product: nil,
            # Unique identifier for a messaging profile.
            messaging_profile_id: nil,
            # +E.164 formatted phone number.
            phone_number: nil,
            # Identifies the type of the resource.
            record_type: nil,
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
                features:
                  Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Features,
                messaging_product: String,
                messaging_profile_id: T.nilable(String),
                phone_number: String,
                record_type:
                  Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::RecordType::TaggedSymbol,
                traffic_type: String,
                type:
                  Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Type::TaggedSymbol,
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
                  Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Features,
                  Telnyx::Internal::AnyHash
                )
              end

            # The set of features available for a specific messaging use case (SMS or MMS).
            # Features can vary depending on the characteristics the phone number, as well as
            # its current product configuration.
            sig { returns(T.nilable(Telnyx::MessagingFeatureSet)) }
            attr_reader :sms

            sig do
              params(sms: T.nilable(Telnyx::MessagingFeatureSet::OrHash)).void
            end
            attr_writer :sms

            sig do
              params(
                sms: T.nilable(Telnyx::MessagingFeatureSet::OrHash)
              ).returns(T.attached_class)
            end
            def self.new(
              # The set of features available for a specific messaging use case (SMS or MMS).
              # Features can vary depending on the characteristics the phone number, as well as
              # its current product configuration.
              sms: nil
            )
            end

            sig do
              override.returns({ sms: T.nilable(Telnyx::MessagingFeatureSet) })
            end
            def to_hash
            end
          end

          # Identifies the type of the resource.
          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MESSAGING_PHONE_NUMBER =
              T.let(
                :messaging_phone_number,
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::RecordType::TaggedSymbol
              )
            MESSAGING_SETTINGS =
              T.let(
                :messaging_settings,
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::RecordType::TaggedSymbol
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
                T.all(
                  Symbol,
                  Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LONGCODE =
              T.let(
                :longcode,
                Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
