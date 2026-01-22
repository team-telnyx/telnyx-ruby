# typed: strong

module Telnyx
  module Resources
    class PhoneNumbers
      class Voice
        # Retrieve a phone number with voice settings
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::VoiceRetrieveResponse)
        end
        def retrieve(
          # Identifies the resource.
          id,
          request_options: {}
        )
        end

        # Update a phone number with voice settings
        sig do
          params(
            id: String,
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
              Telnyx::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::VoiceUpdateResponse)
        end
        def update(
          # Identifies the resource.
          id,
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
          usage_payment_method: nil,
          request_options: {}
        )
        end

        # List phone numbers with voice settings
        sig do
          params(
            filter: Telnyx::PhoneNumbers::VoiceListParams::Filter::OrHash,
            page: Telnyx::PhoneNumbers::VoiceListParams::Page::OrHash,
            sort: Telnyx::PhoneNumbers::VoiceListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultPagination[
              Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings
            ]
          )
        end
        def list(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[phone_number], filter[connection_name], filter[customer_reference],
          # filter[voice.usage_payment_method]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          sort: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
