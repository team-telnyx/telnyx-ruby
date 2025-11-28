# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobilePhoneNumbers#update
    class MobilePhoneNumberUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute call_forwarding
      #
      #   @return [Telnyx::Models::MobilePhoneNumberUpdateParams::CallForwarding, nil]
      optional :call_forwarding, -> { Telnyx::MobilePhoneNumberUpdateParams::CallForwarding }

      # @!attribute call_recording
      #
      #   @return [Telnyx::Models::MobilePhoneNumberUpdateParams::CallRecording, nil]
      optional :call_recording, -> { Telnyx::MobilePhoneNumberUpdateParams::CallRecording }

      # @!attribute caller_id_name_enabled
      #
      #   @return [Boolean, nil]
      optional :caller_id_name_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute cnam_listing
      #
      #   @return [Telnyx::Models::MobilePhoneNumberUpdateParams::CnamListing, nil]
      optional :cnam_listing, -> { Telnyx::MobilePhoneNumberUpdateParams::CnamListing }

      # @!attribute connection_id
      #
      #   @return [String, nil]
      optional :connection_id, String, nil?: true

      # @!attribute customer_reference
      #
      #   @return [String, nil]
      optional :customer_reference, String, nil?: true

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::MobilePhoneNumberUpdateParams::Inbound, nil]
      optional :inbound, -> { Telnyx::MobilePhoneNumberUpdateParams::Inbound }

      # @!attribute inbound_call_screening
      #
      #   @return [Symbol, Telnyx::Models::MobilePhoneNumberUpdateParams::InboundCallScreening, nil]
      optional :inbound_call_screening, enum: -> { Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening }

      # @!attribute noise_suppression
      #
      #   @return [Boolean, nil]
      optional :noise_suppression, Telnyx::Internal::Type::Boolean

      # @!attribute outbound
      #
      #   @return [Telnyx::Models::MobilePhoneNumberUpdateParams::Outbound, nil]
      optional :outbound, -> { Telnyx::MobilePhoneNumberUpdateParams::Outbound }

      # @!attribute tags
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(call_forwarding: nil, call_recording: nil, caller_id_name_enabled: nil, cnam_listing: nil, connection_id: nil, customer_reference: nil, inbound: nil, inbound_call_screening: nil, noise_suppression: nil, outbound: nil, tags: nil, request_options: {})
      #   @param call_forwarding [Telnyx::Models::MobilePhoneNumberUpdateParams::CallForwarding]
      #   @param call_recording [Telnyx::Models::MobilePhoneNumberUpdateParams::CallRecording]
      #   @param caller_id_name_enabled [Boolean]
      #   @param cnam_listing [Telnyx::Models::MobilePhoneNumberUpdateParams::CnamListing]
      #   @param connection_id [String, nil]
      #   @param customer_reference [String, nil]
      #   @param inbound [Telnyx::Models::MobilePhoneNumberUpdateParams::Inbound]
      #   @param inbound_call_screening [Symbol, Telnyx::Models::MobilePhoneNumberUpdateParams::InboundCallScreening]
      #   @param noise_suppression [Boolean]
      #   @param outbound [Telnyx::Models::MobilePhoneNumberUpdateParams::Outbound]
      #   @param tags [Array<String>]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class CallForwarding < Telnyx::Internal::Type::BaseModel
        # @!attribute call_forwarding_enabled
        #
        #   @return [Boolean, nil]
        optional :call_forwarding_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute forwarding_type
        #
        #   @return [Symbol, Telnyx::Models::MobilePhoneNumberUpdateParams::CallForwarding::ForwardingType, nil]
        optional :forwarding_type,
                 enum: -> { Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::ForwardingType },
                 nil?: true

        # @!attribute forwards_to
        #
        #   @return [String, nil]
        optional :forwards_to, String, nil?: true

        # @!method initialize(call_forwarding_enabled: nil, forwarding_type: nil, forwards_to: nil)
        #   @param call_forwarding_enabled [Boolean]
        #   @param forwarding_type [Symbol, Telnyx::Models::MobilePhoneNumberUpdateParams::CallForwarding::ForwardingType, nil]
        #   @param forwards_to [String, nil]

        # @see Telnyx::Models::MobilePhoneNumberUpdateParams::CallForwarding#forwarding_type
        module ForwardingType
          extend Telnyx::Internal::Type::Enum

          ALWAYS = :always
          ON_FAILURE = :"on-failure"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class CallRecording < Telnyx::Internal::Type::BaseModel
        # @!attribute inbound_call_recording_channels
        #
        #   @return [Symbol, Telnyx::Models::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels, nil]
        optional :inbound_call_recording_channels,
                 enum: -> { Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels }

        # @!attribute inbound_call_recording_enabled
        #
        #   @return [Boolean, nil]
        optional :inbound_call_recording_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute inbound_call_recording_format
        #
        #   @return [Symbol, Telnyx::Models::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat, nil]
        optional :inbound_call_recording_format,
                 enum: -> { Telnyx::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat }

        # @!method initialize(inbound_call_recording_channels: nil, inbound_call_recording_enabled: nil, inbound_call_recording_format: nil)
        #   @param inbound_call_recording_channels [Symbol, Telnyx::Models::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingChannels]
        #   @param inbound_call_recording_enabled [Boolean]
        #   @param inbound_call_recording_format [Symbol, Telnyx::Models::MobilePhoneNumberUpdateParams::CallRecording::InboundCallRecordingFormat]

        # @see Telnyx::Models::MobilePhoneNumberUpdateParams::CallRecording#inbound_call_recording_channels
        module InboundCallRecordingChannels
          extend Telnyx::Internal::Type::Enum

          SINGLE = :single
          DUAL = :dual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::MobilePhoneNumberUpdateParams::CallRecording#inbound_call_recording_format
        module InboundCallRecordingFormat
          extend Telnyx::Internal::Type::Enum

          WAV = :wav
          MP3 = :mp3

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class CnamListing < Telnyx::Internal::Type::BaseModel
        # @!attribute cnam_listing_details
        #
        #   @return [String, nil]
        optional :cnam_listing_details, String, nil?: true

        # @!attribute cnam_listing_enabled
        #
        #   @return [Boolean, nil]
        optional :cnam_listing_enabled, Telnyx::Internal::Type::Boolean

        # @!method initialize(cnam_listing_details: nil, cnam_listing_enabled: nil)
        #   @param cnam_listing_details [String, nil]
        #   @param cnam_listing_enabled [Boolean]
      end

      class Inbound < Telnyx::Internal::Type::BaseModel
        # @!attribute interception_app_id
        #   The ID of the CallControl or TeXML Application that will intercept inbound
        #   calls.
        #
        #   @return [String, nil]
        optional :interception_app_id, String, nil?: true

        # @!method initialize(interception_app_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MobilePhoneNumberUpdateParams::Inbound} for more details.
        #
        #   @param interception_app_id [String, nil] The ID of the CallControl or TeXML Application that will intercept inbound calls
      end

      module InboundCallScreening
        extend Telnyx::Internal::Type::Enum

        DISABLED = :disabled
        REJECT_CALLS = :reject_calls
        FLAG_CALLS = :flag_calls

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Outbound < Telnyx::Internal::Type::BaseModel
        # @!attribute interception_app_id
        #   The ID of the CallControl or TeXML Application that will intercept outbound
        #   calls.
        #
        #   @return [String, nil]
        optional :interception_app_id, String, nil?: true

        # @!method initialize(interception_app_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MobilePhoneNumberUpdateParams::Outbound} for more details.
        #
        #   @param interception_app_id [String, nil] The ID of the CallControl or TeXML Application that will intercept outbound call
      end
    end
  end
end
