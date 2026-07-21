# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Faxes#list
    class Fax < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute client_state
      #   State received from a command.
      #
      #   @return [String, nil]
      optional :client_state, String

      # @!attribute connection_id
      #   The ID of the connection used to send the fax.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute created_at
      #   ISO 8601 timestamp when resource was created
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute direction
      #   The direction of the fax.
      #
      #   @return [Symbol, Telnyx::Models::Fax::Direction, nil]
      optional :direction, enum: -> { Telnyx::Fax::Direction }

      # @!attribute failure_reason
      #   Customer-facing failure reason for the fax. Present on every fax object (null
      #   when the fax has not failed). Mapped from the more granular
      #   `internal_failure_reason`. Common values include: `receiver_call_dropped`,
      #   `sender_call_dropped`, `sender_canceled`, `carrier_lost`, `service_unavailable`,
      #   `fax_signaling_error`, `receiver_communication_error`,
      #   `sender_communication_error`, `receiver_decline`,
      #   `receiver_recovery_on_timer_expire`, `receiver_no_response`,
      #   `receiver_invalid_number_format`, `receiver_no_answer`,
      #   `receiver_incompatible_destination`, `receiver_unallocated_number`,
      #   `destination_unreachable`, `user_busy`, `invalid_ecm_response_from_receiver`,
      #   `fax_initial_communication_timeout`, `destination_not_in_service_plan`,
      #   `account_disabled`, `destination_invalid`, `no_outbound_profile`,
      #   `destination_not_in_countries_whitelist`, `user_channel_limit_exceeded`,
      #   `outbound_profile_channel_limit_exceeded`, `connection_channel_limit_exceeded`,
      #   `outbound_profile_daily_spend_limit_exceeded`, `unverified_origination_number`,
      #   `unverified_destination_not_allowed`, `file_format_invalid`,
      #   `file_download_failed`, `file_size_limit_exceeded`, `page_count_limit_exceeded`,
      #   `media_processing_exception`.
      #
      #   @return [String, nil]
      optional :failure_reason, String, nil?: true

      # @!attribute from
      #   The phone number, in E.164 format, the fax will be sent from.
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute from_display_name
      #   The string used as the caller id name (SIP From Display Name) presented to the
      #   destination (`to` number).
      #
      #   @return [String, nil]
      optional :from_display_name, String

      # @!attribute internal_failure_reason
      #   Internal, more granular failure reason for the fax. Present on every fax object
      #   (null when the fax has not failed). Useful for deeper debugging beyond the
      #   customer-facing `failure_reason`.
      #
      #   @return [String, nil]
      optional :internal_failure_reason, String, nil?: true

      # @!attribute media_name
      #   The media_name used for the fax's media. Must point to a file previously
      #   uploaded to api.telnyx.com/v2/media by the same user/organization. Supported
      #   formats: PDF, TIFF, JPEG, PNG, DOC, DOCX, RTF, and TXT. media_name and
      #   media_url/contents can't be submitted together.
      #
      #   @return [String, nil]
      optional :media_name, String

      # @!attribute media_url
      #   The URL (or list of URLs) to the fax document. Supported formats: PDF, TIFF,
      #   JPEG, PNG, DOC, DOCX, RTF, and TXT. media_url and media_name/contents can't be
      #   submitted together.
      #
      #   @return [String, nil]
      optional :media_url, String

      # @!attribute preview_url
      #   If `store_preview` was set to `true`, this is a link to temporary location. Link
      #   expires after 10 minutes.
      #
      #   @return [String, nil]
      optional :preview_url, String

      # @!attribute quality
      #   The quality of the fax. The `ultra` settings provides the highest quality
      #   available, but also present longer fax processing times. `ultra_light` is best
      #   suited for images, wihle `ultra_dark` is best suited for text.
      #
      #   @return [Symbol, Telnyx::Models::Quality, nil]
      optional :quality, enum: -> { Telnyx::Quality }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::Fax::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::Fax::RecordType }

      # @!attribute status
      #   Status of the fax
      #
      #   @return [Symbol, Telnyx::Models::Fax::Status, nil]
      optional :status, enum: -> { Telnyx::Fax::Status }

      # @!attribute store_media
      #   Should fax media be stored on temporary URL. It does not support media_name.
      #
      #   @return [Boolean, nil]
      optional :store_media, Telnyx::Internal::Type::Boolean

      # @!attribute stored_media_url
      #   If store_media was set to true, this is a link to temporary location. Link
      #   expires after 10 minutes.
      #
      #   @return [String, nil]
      optional :stored_media_url, String

      # @!attribute to
      #   The phone number, in E.164 format, the fax will be sent to or SIP URI
      #
      #   @return [String, nil]
      optional :to, String

      # @!attribute updated_at
      #   ISO 8601 timestamp when resource was updated
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute webhook_failover_url
      #   Optional failover URL that will receive fax webhooks if webhook_url doesn't
      #   return a 2XX response
      #
      #   @return [String, nil]
      optional :webhook_failover_url, String

      # @!attribute webhook_url
      #   URL that will receive fax webhooks
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(id: nil, client_state: nil, connection_id: nil, created_at: nil, direction: nil, failure_reason: nil, from: nil, from_display_name: nil, internal_failure_reason: nil, media_name: nil, media_url: nil, preview_url: nil, quality: nil, record_type: nil, status: nil, store_media: nil, stored_media_url: nil, to: nil, updated_at: nil, webhook_failover_url: nil, webhook_url: nil)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::Fax} for
      #   more details.
      #
      #   @param id [String] Identifies the type of resource.
      #
      #   @param client_state [String] State received from a command.
      #
      #   @param connection_id [String] The ID of the connection used to send the fax.
      #
      #   @param created_at [Time] ISO 8601 timestamp when resource was created
      #
      #   @param direction [Symbol, Telnyx::Models::Fax::Direction] The direction of the fax.
      #
      #   @param failure_reason [String, nil] Customer-facing failure reason for the fax. Present on every fax object (null wh
      #
      #   @param from [String] The phone number, in E.164 format, the fax will be sent from.
      #
      #   @param from_display_name [String] The string used as the caller id name (SIP From Display Name) presented to the d
      #
      #   @param internal_failure_reason [String, nil] Internal, more granular failure reason for the fax. Present on every fax object
      #
      #   @param media_name [String] The media_name used for the fax's media. Must point to a file previously uploade
      #
      #   @param media_url [String] The URL (or list of URLs) to the fax document. Supported formats: PDF, TIFF, JPE
      #
      #   @param preview_url [String] If `store_preview` was set to `true`, this is a link to temporary location. Link
      #
      #   @param quality [Symbol, Telnyx::Models::Quality] The quality of the fax. The `ultra` settings provides the highest quality availa
      #
      #   @param record_type [Symbol, Telnyx::Models::Fax::RecordType] Identifies the type of the resource.
      #
      #   @param status [Symbol, Telnyx::Models::Fax::Status] Status of the fax
      #
      #   @param store_media [Boolean] Should fax media be stored on temporary URL. It does not support media_name.
      #
      #   @param stored_media_url [String] If store_media was set to true, this is a link to temporary location. Link expir
      #
      #   @param to [String] The phone number, in E.164 format, the fax will be sent to or SIP URI
      #
      #   @param updated_at [Time] ISO 8601 timestamp when resource was updated
      #
      #   @param webhook_failover_url [String] Optional failover URL that will receive fax webhooks if webhook_url doesn't retu
      #
      #   @param webhook_url [String] URL that will receive fax webhooks

      # The direction of the fax.
      #
      # @see Telnyx::Models::Fax#direction
      module Direction
        extend Telnyx::Internal::Type::Enum

        INBOUND = :inbound
        OUTBOUND = :outbound

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::Fax#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        FAX = :fax

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the fax
      #
      # @see Telnyx::Models::Fax#status
      module Status
        extend Telnyx::Internal::Type::Enum

        QUEUED = :queued
        MEDIA_PROCESSED = :"media.processed"
        ORIGINATED = :originated
        SENDING = :sending
        DELIVERED = :delivered
        FAILED = :failed
        INITIATED = :initiated
        RECEIVING = :receiving
        MEDIA_PROCESSING = :"media.processing"
        RECEIVED = :received

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
