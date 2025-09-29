# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class UpdateVoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::UpdateVoiceSettings,
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

        # Controls whether the caller ID name is enabled for this phone number.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :caller_id_name_enabled

        sig { params(caller_id_name_enabled: T::Boolean).void }
        attr_writer :caller_id_name_enabled

        # The CNAM listing settings for a phone number.
        sig { returns(T.nilable(Telnyx::PhoneNumbers::CnamListing)) }
        attr_reader :cnam_listing

        sig do
          params(cnam_listing: Telnyx::PhoneNumbers::CnamListing::OrHash).void
        end
        attr_writer :cnam_listing

        # The inbound_call_screening setting is a phone number configuration option
        # variable that allows users to configure their settings to block or flag
        # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
        # feature has an additional per-number monthly cost associated with it.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening::OrSymbol
            )
          )
        end
        attr_reader :inbound_call_screening

        sig do
          params(
            inbound_call_screening:
              Telnyx::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening::OrSymbol
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
              Telnyx::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod::OrSymbol
            )
          )
        end
        attr_reader :usage_payment_method

        sig do
          params(
            usage_payment_method:
              Telnyx::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod::OrSymbol
          ).void
        end
        attr_writer :usage_payment_method

        sig do
          params(
            call_forwarding: Telnyx::PhoneNumbers::CallForwarding::OrHash,
            call_recording: Telnyx::PhoneNumbers::CallRecording::OrHash,
            caller_id_name_enabled: T::Boolean,
            cnam_listing: Telnyx::PhoneNumbers::CnamListing::OrHash,
            inbound_call_screening:
              Telnyx::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening::OrSymbol,
            media_features: Telnyx::PhoneNumbers::MediaFeatures::OrHash,
            tech_prefix_enabled: T::Boolean,
            translated_number: String,
            usage_payment_method:
              Telnyx::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The call forwarding settings for a phone number.
          call_forwarding: nil,
          # The call recording settings for a phone number.
          call_recording: nil,
          # Controls whether the caller ID name is enabled for this phone number.
          caller_id_name_enabled: nil,
          # The CNAM listing settings for a phone number.
          cnam_listing: nil,
          # The inbound_call_screening setting is a phone number configuration option
          # variable that allows users to configure their settings to block or flag
          # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
          # feature has an additional per-number monthly cost associated with it.
          inbound_call_screening: nil,
          # The media features settings for a phone number.
          media_features: nil,
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
              call_forwarding: Telnyx::PhoneNumbers::CallForwarding,
              call_recording: Telnyx::PhoneNumbers::CallRecording,
              caller_id_name_enabled: T::Boolean,
              cnam_listing: Telnyx::PhoneNumbers::CnamListing,
              inbound_call_screening:
                Telnyx::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening::OrSymbol,
              media_features: Telnyx::PhoneNumbers::MediaFeatures,
              tech_prefix_enabled: T::Boolean,
              translated_number: String,
              usage_payment_method:
                Telnyx::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod::OrSymbol
            }
          )
        end
        def to_hash
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
                Telnyx::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISABLED =
            T.let(
              :disabled,
              Telnyx::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening::TaggedSymbol
            )
          REJECT_CALLS =
            T.let(
              :reject_calls,
              Telnyx::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening::TaggedSymbol
            )
          FLAG_CALLS =
            T.let(
              :flag_calls,
              Telnyx::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening::TaggedSymbol
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
                Telnyx::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAY_PER_MINUTE =
            T.let(
              :"pay-per-minute",
              Telnyx::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod::TaggedSymbol
            )
          CHANNEL =
            T.let(
              :channel,
              Telnyx::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod::TaggedSymbol
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
