# typed: strong

module Telnyx
  module Models
    PhoneNumberWithVoiceSettings = PhoneNumbers::PhoneNumberWithVoiceSettings

    module PhoneNumbers
      class PhoneNumberWithVoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings,
              Telnyx::Internal::AnyHash
            )
          end

        # The call forwarding settings for a phone number.
        sig { returns(T.nilable(Telnyx::PhoneNumbers::CallForwarding)) }
        attr_reader :call_forwarding

        sig do
          params(
            call_forwarding: Telnyx::PhoneNumbers::CallForwarding::OrHash
          ).void
        end
        attr_writer :call_forwarding

        # The call recording settings for a phone number.
        sig { returns(T.nilable(Telnyx::PhoneNumbers::CallRecording)) }
        attr_reader :call_recording

        sig do
          params(
            call_recording: Telnyx::PhoneNumbers::CallRecording::OrHash
          ).void
        end
        attr_writer :call_recording

        # The CNAM listing settings for a phone number.
        sig { returns(T.nilable(Telnyx::PhoneNumbers::CnamListing)) }
        attr_reader :cnam_listing

        sig do
          params(cnam_listing: Telnyx::PhoneNumbers::CnamListing::OrHash).void
        end
        attr_writer :cnam_listing

        # Identifies the connection associated with this phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # A customer reference string for customer look ups.
        sig { returns(T.nilable(String)) }
        attr_reader :customer_reference

        sig { params(customer_reference: String).void }
        attr_writer :customer_reference

        # The emergency services settings for a phone number.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency
            )
          )
        end
        attr_reader :emergency

        sig do
          params(
            emergency:
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::OrHash
          ).void
        end
        attr_writer :emergency

        # The inbound_call_screening setting is a phone number configuration option
        # variable that allows users to configure their settings to block or flag
        # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
        # feature has an additional per-number monthly cost associated with it.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening::TaggedSymbol
            )
          )
        end
        attr_reader :inbound_call_screening

        sig do
          params(
            inbound_call_screening:
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening::OrSymbol
          ).void
        end
        attr_writer :inbound_call_screening

        # The media features settings for a phone number.
        sig { returns(T.nilable(Telnyx::PhoneNumbers::MediaFeatures)) }
        attr_reader :media_features

        sig do
          params(
            media_features: Telnyx::PhoneNumbers::MediaFeatures::OrHash
          ).void
        end
        attr_writer :media_features

        # Controls whether a tech prefix is enabled for this phone number.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :tech_prefix_enabled

        sig { params(tech_prefix_enabled: T::Boolean).void }
        attr_writer :tech_prefix_enabled

        # This field allows you to rewrite the destination number of an inbound call
        # before the call is routed to you. The value of this field may be any
        # alphanumeric value, and the value will replace the number originally dialed.
        sig { returns(T.nilable(String)) }
        attr_reader :translated_number

        sig { params(translated_number: String).void }
        attr_writer :translated_number

        # Controls whether a number is billed per minute or uses your concurrent channels.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod::TaggedSymbol
            )
          )
        end
        attr_reader :usage_payment_method

        sig do
          params(
            usage_payment_method:
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod::OrSymbol
          ).void
        end
        attr_writer :usage_payment_method

        # Identifies the type of resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The phone number in +E164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            id: String,
            call_forwarding: Telnyx::PhoneNumbers::CallForwarding::OrHash,
            call_recording: Telnyx::PhoneNumbers::CallRecording::OrHash,
            cnam_listing: Telnyx::PhoneNumbers::CnamListing::OrHash,
            connection_id: String,
            customer_reference: String,
            emergency:
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::OrHash,
            inbound_call_screening:
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening::OrSymbol,
            media_features: Telnyx::PhoneNumbers::MediaFeatures::OrHash,
            phone_number: String,
            record_type: String,
            tech_prefix_enabled: T::Boolean,
            translated_number: String,
            usage_payment_method:
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the type of resource.
          id: nil,
          # The call forwarding settings for a phone number.
          call_forwarding: nil,
          # The call recording settings for a phone number.
          call_recording: nil,
          # The CNAM listing settings for a phone number.
          cnam_listing: nil,
          # Identifies the connection associated with this phone number.
          connection_id: nil,
          # A customer reference string for customer look ups.
          customer_reference: nil,
          # The emergency services settings for a phone number.
          emergency: nil,
          # The inbound_call_screening setting is a phone number configuration option
          # variable that allows users to configure their settings to block or flag
          # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
          # feature has an additional per-number monthly cost associated with it.
          inbound_call_screening: nil,
          # The media features settings for a phone number.
          media_features: nil,
          # The phone number in +E164 format.
          phone_number: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # Controls whether a tech prefix is enabled for this phone number.
          tech_prefix_enabled: nil,
          # This field allows you to rewrite the destination number of an inbound call
          # before the call is routed to you. The value of this field may be any
          # alphanumeric value, and the value will replace the number originally dialed.
          translated_number: nil,
          # Controls whether a number is billed per minute or uses your concurrent channels.
          usage_payment_method: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              call_forwarding: Telnyx::PhoneNumbers::CallForwarding,
              call_recording: Telnyx::PhoneNumbers::CallRecording,
              cnam_listing: Telnyx::PhoneNumbers::CnamListing,
              connection_id: String,
              customer_reference: String,
              emergency:
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency,
              inbound_call_screening:
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening::TaggedSymbol,
              media_features: Telnyx::PhoneNumbers::MediaFeatures,
              phone_number: String,
              record_type: String,
              tech_prefix_enabled: T::Boolean,
              translated_number: String,
              usage_payment_method:
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Emergency < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the address to be used with emergency services.
          sig { returns(T.nilable(String)) }
          attr_reader :emergency_address_id

          sig { params(emergency_address_id: String).void }
          attr_writer :emergency_address_id

          # Allows you to enable or disable emergency services on the phone number. In order
          # to enable emergency services, you must also set an emergency_address_id.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :emergency_enabled

          sig { params(emergency_enabled: T::Boolean).void }
          attr_writer :emergency_enabled

          # Represents the state of the number regarding emergency activation.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus::TaggedSymbol
              )
            )
          end
          attr_reader :emergency_status

          sig do
            params(
              emergency_status:
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus::OrSymbol
            ).void
          end
          attr_writer :emergency_status

          # The emergency services settings for a phone number.
          sig do
            params(
              emergency_address_id: String,
              emergency_enabled: T::Boolean,
              emergency_status:
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the address to be used with emergency services.
            emergency_address_id: nil,
            # Allows you to enable or disable emergency services on the phone number. In order
            # to enable emergency services, you must also set an emergency_address_id.
            emergency_enabled: nil,
            # Represents the state of the number regarding emergency activation.
            emergency_status: nil
          )
          end

          sig do
            override.returns(
              {
                emergency_address_id: String,
                emergency_enabled: T::Boolean,
                emergency_status:
                  Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Represents the state of the number regarding emergency activation.
          module EmergencyStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DISABLED =
              T.let(
                :disabled,
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus::TaggedSymbol
              )
            PROVISIONING =
              T.let(
                :provisioning,
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus::TaggedSymbol
              )
            DEPROVISIONING =
              T.let(
                :deprovisioning,
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus::TaggedSymbol
              )
            PROVISIONING_FAILED =
              T.let(
                :"provisioning-failed",
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The inbound_call_screening setting is a phone number configuration option
        # variable that allows users to configure their settings to block or flag
        # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
        # feature has an additional per-number monthly cost associated with it.
        module InboundCallScreening
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISABLED =
            T.let(
              :disabled,
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening::TaggedSymbol
            )
          REJECT_CALLS =
            T.let(
              :reject_calls,
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening::TaggedSymbol
            )
          FLAG_CALLS =
            T.let(
              :flag_calls,
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Controls whether a number is billed per minute or uses your concurrent channels.
        module UsagePaymentMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAY_PER_MINUTE =
            T.let(
              :"pay-per-minute",
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod::TaggedSymbol
            )
          CHANNEL =
            T.let(
              :channel,
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod::TaggedSymbol
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
