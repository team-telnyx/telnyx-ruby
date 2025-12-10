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

      # @!attribute media_name
      #   The media_name used for the fax's media. Must point to a file previously
      #   uploaded to api.telnyx.com/v2/media by the same user/organization. media_name
      #   and media_url/contents can't be submitted together.
      #
      #   @return [String, nil]
      optional :media_name, String

      # @!attribute media_url
      #   The URL (or list of URLs) to the PDF used for the fax's media. media_url and
      #   media_name/contents can't be submitted together.
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
      #   @return [Symbol, Telnyx::Models::Fax::Quality, nil]
      optional :quality, enum: -> { Telnyx::Fax::Quality }

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

      # @!method initialize(id: nil, client_state: nil, connection_id: nil, created_at: nil, direction: nil, from: nil, from_display_name: nil, media_name: nil, media_url: nil, preview_url: nil, quality: nil, record_type: nil, status: nil, store_media: nil, stored_media_url: nil, to: nil, updated_at: nil, webhook_failover_url: nil, webhook_url: nil)
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
      #   @param from [String] The phone number, in E.164 format, the fax will be sent from.
      #
      #   @param from_display_name [String] The string used as the caller id name (SIP From Display Name) presented to the d
      #
      #   @param media_name [String] The media_name used for the fax's media. Must point to a file previously uploade
      #
      #   @param media_url [String] The URL (or list of URLs) to the PDF used for the fax's media. media_url and med
      #
      #   @param preview_url [String] If `store_preview` was set to `true`, this is a link to temporary location. Link
      #
      #   @param quality [Symbol, Telnyx::Models::Fax::Quality] The quality of the fax. The `ultra` settings provides the highest quality availa
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

      # The quality of the fax. The `ultra` settings provides the highest quality
      # available, but also present longer fax processing times. `ultra_light` is best
      # suited for images, wihle `ultra_dark` is best suited for text.
      #
      # @see Telnyx::Models::Fax#quality
      module Quality
        extend Telnyx::Internal::Type::Enum

        NORMAL = :normal
        HIGH = :high
        VERY_HIGH = :very_high
        ULTRA_LIGHT = :ultra_light
        ULTRA_DARK = :ultra_dark

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
