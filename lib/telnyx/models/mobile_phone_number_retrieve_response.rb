# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobilePhoneNumbers#retrieve
    class MobilePhoneNumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data]

      # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute call_forwarding
        #
        #   @return [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallForwarding, nil]
        optional :call_forwarding, -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallForwarding }

        # @!attribute call_recording
        #
        #   @return [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording, nil]
        optional :call_recording, -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording }

        # @!attribute caller_id_name_enabled
        #   Indicates if caller ID name is enabled.
        #
        #   @return [Boolean, nil]
        optional :caller_id_name_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute cnam_listing
        #
        #   @return [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CnamListing, nil]
        optional :cnam_listing, -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CnamListing }

        # @!attribute connection_id
        #   The ID of the connection associated with this number.
        #
        #   @return [String, nil]
        optional :connection_id, String, nil?: true

        # @!attribute customer_reference
        #   A customer reference string.
        #
        #   @return [String, nil]
        optional :customer_reference, String, nil?: true

        # @!attribute inbound
        #
        #   @return [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::Inbound, nil]
        optional :inbound, -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::Inbound }

        # @!attribute inbound_call_screening
        #   The inbound call screening setting.
        #
        #   @return [Symbol, Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::InboundCallScreening, nil]
        optional :inbound_call_screening,
                 enum: -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::InboundCallScreening },
                 nil?: true

        # @!attribute noise_suppression
        #   The noise suppression setting.
        #
        #   @return [Symbol, Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::NoiseSuppression, nil]
        optional :noise_suppression,
                 enum: -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::NoiseSuppression }

        # @!attribute outbound
        #
        #   @return [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::Outbound, nil]
        optional :outbound, -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::Outbound }

        # @!attribute tags
        #   A list of tags associated with the number.
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute connection_name
          #   The name of the connection.
          #
          #   @return [String, nil]
          optional :connection_name, String, nil?: true

          # @!attribute connection_type
          #   The type of the connection.
          #
          #   @return [String, nil]
          optional :connection_type, String, nil?: true

          # @!attribute country_iso_alpha2
          #   The ISO 3166-1 alpha-2 country code of the number.
          #
          #   @return [String, nil]
          optional :country_iso_alpha2, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute mobile_voice_enabled
          #   Indicates if mobile voice is enabled.
          #
          #   @return [Boolean, nil]
          optional :mobile_voice_enabled, Telnyx::Internal::Type::Boolean

          # @!attribute phone_number
          #   The +E.164-formatted phone number.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute sim_card_id
          #   The ID of the SIM card associated with this number.
          #
          #   @return [String, nil]
          optional :sim_card_id, String

          # @!attribute status
          #   The status of the phone number.
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the resource was last updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time
        end

        # @!method initialize(id: nil, call_forwarding: nil, call_recording: nil, caller_id_name_enabled: nil, cnam_listing: nil, connection_id: nil, connection_name: nil, connection_type: nil, country_iso_alpha2: nil, created_at: nil, customer_reference: nil, inbound: nil, inbound_call_screening: nil, mobile_voice_enabled: nil, noise_suppression: nil, outbound: nil, phone_number: nil, record_type: nil, sim_card_id: nil, status: nil, tags: nil, updated_at: nil)
        #   @param id [String] Identifies the resource.
        #
        #   @param call_forwarding [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallForwarding]
        #
        #   @param call_recording [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording]
        #
        #   @param caller_id_name_enabled [Boolean] Indicates if caller ID name is enabled.
        #
        #   @param cnam_listing [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CnamListing]
        #
        #   @param connection_id [String, nil] The ID of the connection associated with this number.
        #
        #   @param connection_name [String, nil] The name of the connection.
        #
        #   @param connection_type [String, nil] The type of the connection.
        #
        #   @param country_iso_alpha2 [String] The ISO 3166-1 alpha-2 country code of the number.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param customer_reference [String, nil] A customer reference string.
        #
        #   @param inbound [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::Inbound]
        #
        #   @param inbound_call_screening [Symbol, Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::InboundCallScreening, nil] The inbound call screening setting.
        #
        #   @param mobile_voice_enabled [Boolean] Indicates if mobile voice is enabled.
        #
        #   @param noise_suppression [Symbol, Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::NoiseSuppression] The noise suppression setting.
        #
        #   @param outbound [Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::Outbound]
        #
        #   @param phone_number [String] The +E.164-formatted phone number.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param sim_card_id [String] The ID of the SIM card associated with this number.
        #
        #   @param status [String] The status of the phone number.
        #
        #   @param tags [Array<String>] A list of tags associated with the number.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was last updated.

        # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data#call_forwarding
        class CallForwarding < Telnyx::Internal::Type::BaseModel
          # @!attribute call_forwarding_enabled
          #
          #   @return [Boolean, nil]
          optional :call_forwarding_enabled, Telnyx::Internal::Type::Boolean

          # @!attribute forwarding_type
          #
          #   @return [Symbol, Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallForwarding::ForwardingType, nil]
          optional :forwarding_type,
                   enum: -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallForwarding::ForwardingType },
                   nil?: true

          # @!attribute forwards_to
          #
          #   @return [String, nil]
          optional :forwards_to, String, nil?: true

          # @!method initialize(call_forwarding_enabled: nil, forwarding_type: nil, forwards_to: nil)
          #   @param call_forwarding_enabled [Boolean]
          #   @param forwarding_type [Symbol, Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallForwarding::ForwardingType, nil]
          #   @param forwards_to [String, nil]

          # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallForwarding#forwarding_type
          module ForwardingType
            extend Telnyx::Internal::Type::Enum

            ALWAYS = :always
            ON_FAILURE = :"on-failure"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data#call_recording
        class CallRecording < Telnyx::Internal::Type::BaseModel
          # @!attribute inbound_call_recording_channels
          #
          #   @return [Symbol, Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording::InboundCallRecordingChannels, nil]
          optional :inbound_call_recording_channels,
                   enum: -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording::InboundCallRecordingChannels }

          # @!attribute inbound_call_recording_enabled
          #
          #   @return [Boolean, nil]
          optional :inbound_call_recording_enabled, Telnyx::Internal::Type::Boolean

          # @!attribute inbound_call_recording_format
          #
          #   @return [Symbol, Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording::InboundCallRecordingFormat, nil]
          optional :inbound_call_recording_format,
                   enum: -> { Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording::InboundCallRecordingFormat }

          # @!method initialize(inbound_call_recording_channels: nil, inbound_call_recording_enabled: nil, inbound_call_recording_format: nil)
          #   @param inbound_call_recording_channels [Symbol, Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording::InboundCallRecordingChannels]
          #   @param inbound_call_recording_enabled [Boolean]
          #   @param inbound_call_recording_format [Symbol, Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording::InboundCallRecordingFormat]

          # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording#inbound_call_recording_channels
          module InboundCallRecordingChannels
            extend Telnyx::Internal::Type::Enum

            SINGLE = :single
            DUAL = :dual

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data::CallRecording#inbound_call_recording_format
          module InboundCallRecordingFormat
            extend Telnyx::Internal::Type::Enum

            WAV = :wav
            MP3 = :mp3

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data#cnam_listing
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

        # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data#inbound
        class Inbound < Telnyx::Internal::Type::BaseModel
          # @!attribute interception_app_id
          #   The ID of the app that will intercept inbound calls.
          #
          #   @return [String, nil]
          optional :interception_app_id, String, nil?: true

          response_only do
            # @!attribute interception_app_name
            #   The name of the app that will intercept inbound calls.
            #
            #   @return [String, nil]
            optional :interception_app_name, String, nil?: true
          end

          # @!method initialize(interception_app_id: nil, interception_app_name: nil)
          #   @param interception_app_id [String, nil] The ID of the app that will intercept inbound calls.
          #
          #   @param interception_app_name [String, nil] The name of the app that will intercept inbound calls.
        end

        # The inbound call screening setting.
        #
        # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data#inbound_call_screening
        module InboundCallScreening
          extend Telnyx::Internal::Type::Enum

          DISABLED = :disabled
          REJECT_CALLS = :reject_calls
          FLAG_CALLS = :flag_calls

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The noise suppression setting.
        #
        # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data#noise_suppression
        module NoiseSuppression
          extend Telnyx::Internal::Type::Enum

          INBOUND = :inbound
          OUTBOUND = :outbound
          BOTH = :both
          DISABLED = :disabled

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data#outbound
        class Outbound < Telnyx::Internal::Type::BaseModel
          # @!attribute interception_app_id
          #   The ID of the app that will intercept outbound calls.
          #
          #   @return [String, nil]
          optional :interception_app_id, String, nil?: true

          response_only do
            # @!attribute interception_app_name
            #   The name of the app that will intercept outbound calls.
            #
            #   @return [String, nil]
            optional :interception_app_name, String, nil?: true
          end

          # @!method initialize(interception_app_id: nil, interception_app_name: nil)
          #   @param interception_app_id [String, nil] The ID of the app that will intercept outbound calls.
          #
          #   @param interception_app_name [String, nil] The name of the app that will intercept outbound calls.
        end
      end
    end
  end
end
