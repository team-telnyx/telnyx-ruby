# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Jobs#list
      class NumbersPhoneNumbersJob < Telnyx::Internal::Type::BaseModel
        # @!attribute phone_numbers
        #
        #   @return [Array<Telnyx::Models::PhoneNumbersJobPhoneNumber>, nil]
        optional :phone_numbers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbersJobPhoneNumber] }

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute etc
          #   ISO 8601 formatted date indicating when the estimated time of completion of the
          #   background job.
          #
          #   @return [Time, nil]
          optional :etc, Time

          # @!attribute failed_operations
          #
          #   @return [Array<Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::FailedOperation>, nil]
          optional :failed_operations,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::FailedOperation] }

          # @!attribute parameters
          #   Effective parameters saved when the job was created, not a snapshot of the
          #   original HTTP request or current phone-number settings. Update jobs include the
          #   saved update fields; emergency-settings jobs include the saved emergency fields;
          #   delete jobs include only targets. Absent fields are omitted, and saved false,
          #   null and empty values are preserved. Tags may be normalized to arrays;
          #   filter-created jobs contain resolved target identifiers rather than the original
          #   filters. Historical jobs with no saved arguments return an empty object.
          #
          #   @return [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters, nil]
          optional :parameters, -> { Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters }

          # @!attribute pending_operations
          #
          #   @return [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJobPendingOperation>, nil]
          optional :pending_operations,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJobPendingOperation] }

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute status
          #   Indicates the completion status of the background update.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Status, nil]
          optional :status, enum: -> { Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status }

          # @!attribute successful_operations
          #
          #   @return [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJobSuccessfulOperation>, nil]
          optional :successful_operations,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJobSuccessfulOperation] }

          # @!attribute type
          #   Identifies the type of the background job.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Type, nil]
          optional :type, enum: -> { Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Type }

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, created_at: nil, etc: nil, failed_operations: nil, parameters: nil, pending_operations: nil, phone_numbers: nil, record_type: nil, status: nil, successful_operations: nil, type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob} for more details.
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param etc [Time] ISO 8601 formatted date indicating when the estimated time of completion of the
        #
        #   @param failed_operations [Array<Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::FailedOperation>]
        #
        #   @param parameters [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters] Effective parameters saved when the job was created, not a snapshot of the origi
        #
        #   @param pending_operations [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJobPendingOperation>]
        #
        #   @param phone_numbers [Array<Telnyx::Models::PhoneNumbersJobPhoneNumber>]
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param status [Symbol, Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Status] Indicates the completion status of the background update.
        #
        #   @param successful_operations [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJobSuccessfulOperation>]
        #
        #   @param type [Symbol, Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Type] Identifies the type of the background job.
        #
        #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.

        class FailedOperation < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The phone number's ID
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute errors
          #
          #   @return [Array<Telnyx::Models::NumbersError73c9788e53>, nil]
          optional :errors, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NumbersError73c9788e53] }

          # @!attribute phone_number
          #   The phone number in e164 format.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!method initialize(id: nil, errors: nil, phone_number: nil)
          #   @param id [String] The phone number's ID
          #
          #   @param errors [Array<Telnyx::Models::NumbersError73c9788e53>]
          #
          #   @param phone_number [String] The phone number in e164 format.
        end

        # @see Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob#parameters
        class Parameters < Telnyx::Internal::Type::BaseModel
          # @!attribute add_tags
          #   Saved add_tags for an update_phone_numbers job. Values reflect creation-time
          #   normalization.
          #
          #   @return [Array<String>, nil]
          optional :add_tags, Telnyx::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute billing_group_id
          #   Saved billing_group_id supplied for an update_phone_numbers job.
          #
          #   @return [String, nil]
          optional :billing_group_id, String, nil?: true

          # @!attribute connection_id
          #   Saved connection_id supplied for an update_phone_numbers job.
          #
          #   @return [String, nil]
          optional :connection_id, String, nil?: true

          # @!attribute customer_reference
          #   Saved customer_reference supplied for an update_phone_numbers job.
          #
          #   @return [String, nil]
          optional :customer_reference, String, nil?: true

          # @!attribute deletion_lock_enabled
          #   Saved deletion_lock_enabled supplied for an update_phone_numbers job.
          #
          #   @return [Boolean, nil]
          optional :deletion_lock_enabled, Telnyx::Internal::Type::Boolean, nil?: true

          # @!attribute emergency_address_id
          #   Saved emergency address identifier for an update_emergency_settings job. An
          #   explicitly supplied null is preserved.
          #
          #   @return [String, nil]
          optional :emergency_address_id, String, nil?: true

          # @!attribute emergency_enabled
          #   Saved emergency-services setting for an update_emergency_settings job.
          #
          #   @return [Boolean, nil]
          optional :emergency_enabled, Telnyx::Internal::Type::Boolean, nil?: true

          # @!attribute external_pin
          #   Saved external_pin supplied for an update_phone_numbers job.
          #
          #   @return [String, nil]
          optional :external_pin, String, nil?: true

          # @!attribute hd_voice_enabled
          #   Saved hd_voice_enabled supplied for an update_phone_numbers job.
          #
          #   @return [Boolean, nil]
          optional :hd_voice_enabled, Telnyx::Internal::Type::Boolean, nil?: true

          # @!attribute phone_numbers
          #   Saved target phone numbers in E.164 format and/or identifiers. Jobs created
          #   using filters contain the resolved identifiers, not the original filter
          #   expression. Stored identifier types are preserved.
          #
          #   @return [Array<String, Integer>, nil]
          optional :phone_numbers,
                   -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::PhoneNumber] }

          # @!attribute remove_tags
          #   Saved remove_tags for an update_phone_numbers job. Values reflect creation-time
          #   normalization.
          #
          #   @return [Array<String>, nil]
          optional :remove_tags, Telnyx::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute tags
          #   Saved tags for an update_phone_numbers job. Values reflect creation-time
          #   normalization.
          #
          #   @return [Array<String>, nil]
          optional :tags, Telnyx::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute voice
          #   Saved voice settings for an update_phone_numbers job, using the public field
          #   names and nesting. Only settings present at creation are returned.
          #
          #   @return [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice, nil]
          optional :voice, -> { Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice }

          # @!method initialize(add_tags: nil, billing_group_id: nil, connection_id: nil, customer_reference: nil, deletion_lock_enabled: nil, emergency_address_id: nil, emergency_enabled: nil, external_pin: nil, hd_voice_enabled: nil, phone_numbers: nil, remove_tags: nil, tags: nil, voice: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters} for more
          #   details.
          #
          #   Effective parameters saved when the job was created, not a snapshot of the
          #   original HTTP request or current phone-number settings. Update jobs include the
          #   saved update fields; emergency-settings jobs include the saved emergency fields;
          #   delete jobs include only targets. Absent fields are omitted, and saved false,
          #   null and empty values are preserved. Tags may be normalized to arrays;
          #   filter-created jobs contain resolved target identifiers rather than the original
          #   filters. Historical jobs with no saved arguments return an empty object.
          #
          #   @param add_tags [Array<String>, nil] Saved add_tags for an update_phone_numbers job. Values reflect creation-time nor
          #
          #   @param billing_group_id [String, nil] Saved billing_group_id supplied for an update_phone_numbers job.
          #
          #   @param connection_id [String, nil] Saved connection_id supplied for an update_phone_numbers job.
          #
          #   @param customer_reference [String, nil] Saved customer_reference supplied for an update_phone_numbers job.
          #
          #   @param deletion_lock_enabled [Boolean, nil] Saved deletion_lock_enabled supplied for an update_phone_numbers job.
          #
          #   @param emergency_address_id [String, nil] Saved emergency address identifier for an update_emergency_settings job. An expl
          #
          #   @param emergency_enabled [Boolean, nil] Saved emergency-services setting for an update_emergency_settings job.
          #
          #   @param external_pin [String, nil] Saved external_pin supplied for an update_phone_numbers job.
          #
          #   @param hd_voice_enabled [Boolean, nil] Saved hd_voice_enabled supplied for an update_phone_numbers job.
          #
          #   @param phone_numbers [Array<String, Integer>] Saved target phone numbers in E.164 format and/or identifiers. Jobs created usin
          #
          #   @param remove_tags [Array<String>, nil] Saved remove_tags for an update_phone_numbers job. Values reflect creation-time
          #
          #   @param tags [Array<String>, nil] Saved tags for an update_phone_numbers job. Values reflect creation-time normali
          #
          #   @param voice [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice] Saved voice settings for an update_phone_numbers job, using the public field nam

          module PhoneNumber
            extend Telnyx::Internal::Type::Union

            variant String

            variant Integer

            # @!method self.variants
            #   @return [Array(String, Integer)]
          end

          # @see Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters#voice
          class Voice < Telnyx::Internal::Type::BaseModel
            # @!attribute call_forwarding
            #
            #   @return [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallForwarding, nil]
            optional :call_forwarding,
                     -> { Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallForwarding }

            # @!attribute call_recording
            #
            #   @return [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallRecording, nil]
            optional :call_recording,
                     -> { Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallRecording }

            # @!attribute caller_id_name_enabled
            #   Saved caller_id_name_enabled setting.
            #
            #   @return [Boolean, nil]
            optional :caller_id_name_enabled, Telnyx::Internal::Type::Boolean, nil?: true

            # @!attribute cnam_listing
            #
            #   @return [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CnamListing, nil]
            optional :cnam_listing,
                     -> { Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CnamListing }

            # @!attribute inbound_call_screening
            #   Saved inbound_call_screening setting.
            #
            #   @return [String, nil]
            optional :inbound_call_screening, String, nil?: true

            # @!attribute media_features
            #
            #   @return [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::MediaFeatures, nil]
            optional :media_features,
                     -> { Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::MediaFeatures }

            # @!attribute tech_prefix_enabled
            #   Saved tech_prefix_enabled setting.
            #
            #   @return [Boolean, nil]
            optional :tech_prefix_enabled, Telnyx::Internal::Type::Boolean, nil?: true

            # @!attribute usage_payment_method
            #   Saved usage_payment_method setting.
            #
            #   @return [String, nil]
            optional :usage_payment_method, String, nil?: true

            # @!method initialize(call_forwarding: nil, call_recording: nil, caller_id_name_enabled: nil, cnam_listing: nil, inbound_call_screening: nil, media_features: nil, tech_prefix_enabled: nil, usage_payment_method: nil)
            #   Saved voice settings for an update_phone_numbers job, using the public field
            #   names and nesting. Only settings present at creation are returned.
            #
            #   @param call_forwarding [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallForwarding]
            #
            #   @param call_recording [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallRecording]
            #
            #   @param caller_id_name_enabled [Boolean, nil] Saved caller_id_name_enabled setting.
            #
            #   @param cnam_listing [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CnamListing]
            #
            #   @param inbound_call_screening [String, nil] Saved inbound_call_screening setting.
            #
            #   @param media_features [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::MediaFeatures]
            #
            #   @param tech_prefix_enabled [Boolean, nil] Saved tech_prefix_enabled setting.
            #
            #   @param usage_payment_method [String, nil] Saved usage_payment_method setting.

            # @see Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice#call_forwarding
            class CallForwarding < Telnyx::Internal::Type::BaseModel
              # @!attribute call_forwarding_enabled
              #   Saved call_forwarding_enabled setting.
              #
              #   @return [Boolean, nil]
              optional :call_forwarding_enabled, Telnyx::Internal::Type::Boolean, nil?: true

              # @!attribute forwarding_type
              #   Saved forwarding_type setting.
              #
              #   @return [String, nil]
              optional :forwarding_type, String, nil?: true

              # @!attribute forwards_to
              #   Saved forwards_to setting.
              #
              #   @return [String, nil]
              optional :forwards_to, String, nil?: true

              # @!method initialize(call_forwarding_enabled: nil, forwarding_type: nil, forwards_to: nil)
              #   @param call_forwarding_enabled [Boolean, nil] Saved call_forwarding_enabled setting.
              #
              #   @param forwarding_type [String, nil] Saved forwarding_type setting.
              #
              #   @param forwards_to [String, nil] Saved forwards_to setting.
            end

            # @see Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice#call_recording
            class CallRecording < Telnyx::Internal::Type::BaseModel
              # @!attribute inbound_call_recording_channels
              #   Saved inbound_call_recording_channels setting.
              #
              #   @return [String, nil]
              optional :inbound_call_recording_channels, String, nil?: true

              # @!attribute inbound_call_recording_enabled
              #   Saved inbound_call_recording_enabled setting.
              #
              #   @return [Boolean, nil]
              optional :inbound_call_recording_enabled, Telnyx::Internal::Type::Boolean, nil?: true

              # @!attribute inbound_call_recording_format
              #   Saved inbound_call_recording_format setting.
              #
              #   @return [String, nil]
              optional :inbound_call_recording_format, String, nil?: true

              # @!attribute record_continue_on_hold
              #   Saved record_continue_on_hold setting.
              #
              #   @return [Boolean, nil]
              optional :record_continue_on_hold, Telnyx::Internal::Type::Boolean, nil?: true

              # @!method initialize(inbound_call_recording_channels: nil, inbound_call_recording_enabled: nil, inbound_call_recording_format: nil, record_continue_on_hold: nil)
              #   @param inbound_call_recording_channels [String, nil] Saved inbound_call_recording_channels setting.
              #
              #   @param inbound_call_recording_enabled [Boolean, nil] Saved inbound_call_recording_enabled setting.
              #
              #   @param inbound_call_recording_format [String, nil] Saved inbound_call_recording_format setting.
              #
              #   @param record_continue_on_hold [Boolean, nil] Saved record_continue_on_hold setting.
            end

            # @see Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice#cnam_listing
            class CnamListing < Telnyx::Internal::Type::BaseModel
              # @!attribute cnam_listing_details
              #   Saved cnam_listing_details setting.
              #
              #   @return [String, nil]
              optional :cnam_listing_details, String, nil?: true

              # @!attribute cnam_listing_enabled
              #   Saved cnam_listing_enabled setting.
              #
              #   @return [Boolean, nil]
              optional :cnam_listing_enabled, Telnyx::Internal::Type::Boolean, nil?: true

              # @!method initialize(cnam_listing_details: nil, cnam_listing_enabled: nil)
              #   @param cnam_listing_details [String, nil] Saved cnam_listing_details setting.
              #
              #   @param cnam_listing_enabled [Boolean, nil] Saved cnam_listing_enabled setting.
            end

            # @see Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice#media_features
            class MediaFeatures < Telnyx::Internal::Type::BaseModel
              # @!attribute accept_any_rtp_packets_enabled
              #   Saved accept_any_rtp_packets_enabled setting.
              #
              #   @return [Boolean, nil]
              optional :accept_any_rtp_packets_enabled, Telnyx::Internal::Type::Boolean, nil?: true

              # @!attribute rtp_auto_adjust_enabled
              #   Saved rtp_auto_adjust_enabled setting.
              #
              #   @return [Boolean, nil]
              optional :rtp_auto_adjust_enabled, Telnyx::Internal::Type::Boolean, nil?: true

              # @!attribute t38_fax_gateway_enabled
              #   Saved t38_fax_gateway_enabled setting.
              #
              #   @return [Boolean, nil]
              optional :t38_fax_gateway_enabled, Telnyx::Internal::Type::Boolean, nil?: true

              # @!method initialize(accept_any_rtp_packets_enabled: nil, rtp_auto_adjust_enabled: nil, t38_fax_gateway_enabled: nil)
              #   @param accept_any_rtp_packets_enabled [Boolean, nil] Saved accept_any_rtp_packets_enabled setting.
              #
              #   @param rtp_auto_adjust_enabled [Boolean, nil] Saved rtp_auto_adjust_enabled setting.
              #
              #   @param t38_fax_gateway_enabled [Boolean, nil] Saved t38_fax_gateway_enabled setting.
            end
          end
        end

        # Indicates the completion status of the background update.
        #
        # @see Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          IN_PROGRESS = :in_progress
          COMPLETED = :completed
          FAILED = :failed
          EXPIRED = :expired

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Identifies the type of the background job.
        #
        # @see Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob#type
        module Type
          extend Telnyx::Internal::Type::Enum

          UPDATE_EMERGENCY_SETTINGS = :update_emergency_settings
          DELETE_PHONE_NUMBERS = :delete_phone_numbers
          UPDATE_PHONE_NUMBERS = :update_phone_numbers

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
