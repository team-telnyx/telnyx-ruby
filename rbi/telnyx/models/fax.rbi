# typed: strong

module Telnyx
  module Models
    class Fax < Telnyx::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Telnyx::Fax, Telnyx::Internal::AnyHash) }

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # State received from a command.
      sig { returns(T.nilable(String)) }
      attr_reader :client_state

      sig { params(client_state: String).void }
      attr_writer :client_state

      # The ID of the connection used to send the fax.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # ISO 8601 timestamp when resource was created
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The direction of the fax.
      sig { returns(T.nilable(Telnyx::Fax::Direction::TaggedSymbol)) }
      attr_reader :direction

      sig { params(direction: Telnyx::Fax::Direction::OrSymbol).void }
      attr_writer :direction

      # The phone number, in E.164 format, the fax will be sent from.
      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      # The string used as the caller id name (SIP From Display Name) presented to the
      # destination (`to` number).
      sig { returns(T.nilable(String)) }
      attr_reader :from_display_name

      sig { params(from_display_name: String).void }
      attr_writer :from_display_name

      # The media_name used for the fax's media. Must point to a file previously
      # uploaded to api.telnyx.com/v2/media by the same user/organization. media_name
      # and media_url/contents can't be submitted together.
      sig { returns(T.nilable(String)) }
      attr_reader :media_name

      sig { params(media_name: String).void }
      attr_writer :media_name

      # The URL (or list of URLs) to the PDF used for the fax's media. media_url and
      # media_name/contents can't be submitted together.
      sig { returns(T.nilable(String)) }
      attr_reader :media_url

      sig { params(media_url: String).void }
      attr_writer :media_url

      # If `store_preview` was set to `true`, this is a link to temporary location. Link
      # expires after 10 minutes.
      sig { returns(T.nilable(String)) }
      attr_reader :preview_url

      sig { params(preview_url: String).void }
      attr_writer :preview_url

      # The quality of the fax. The `ultra` settings provides the highest quality
      # available, but also present longer fax processing times. `ultra_light` is best
      # suited for images, wihle `ultra_dark` is best suited for text.
      sig { returns(T.nilable(Telnyx::Fax::Quality::TaggedSymbol)) }
      attr_reader :quality

      sig { params(quality: Telnyx::Fax::Quality::OrSymbol).void }
      attr_writer :quality

      # Identifies the type of the resource.
      sig { returns(T.nilable(Telnyx::Fax::RecordType::TaggedSymbol)) }
      attr_reader :record_type

      sig { params(record_type: Telnyx::Fax::RecordType::OrSymbol).void }
      attr_writer :record_type

      # Status of the fax
      sig { returns(T.nilable(Telnyx::Fax::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::Fax::Status::OrSymbol).void }
      attr_writer :status

      # Should fax media be stored on temporary URL. It does not support media_name.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :store_media

      sig { params(store_media: T::Boolean).void }
      attr_writer :store_media

      # If store_media was set to true, this is a link to temporary location. Link
      # expires after 10 minutes.
      sig { returns(T.nilable(String)) }
      attr_reader :stored_media_url

      sig { params(stored_media_url: String).void }
      attr_writer :stored_media_url

      # The phone number, in E.164 format, the fax will be sent to or SIP URI
      sig { returns(T.nilable(String)) }
      attr_reader :to

      sig { params(to: String).void }
      attr_writer :to

      # ISO 8601 timestamp when resource was updated
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # Optional failover URL that will receive fax webhooks if webhook_url doesn't
      # return a 2XX response
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_failover_url

      sig { params(webhook_failover_url: String).void }
      attr_writer :webhook_failover_url

      # URL that will receive fax webhooks
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          id: String,
          client_state: String,
          connection_id: String,
          created_at: Time,
          direction: Telnyx::Fax::Direction::OrSymbol,
          from: String,
          from_display_name: String,
          media_name: String,
          media_url: String,
          preview_url: String,
          quality: Telnyx::Fax::Quality::OrSymbol,
          record_type: Telnyx::Fax::RecordType::OrSymbol,
          status: Telnyx::Fax::Status::OrSymbol,
          store_media: T::Boolean,
          stored_media_url: String,
          to: String,
          updated_at: Time,
          webhook_failover_url: String,
          webhook_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # State received from a command.
        client_state: nil,
        # The ID of the connection used to send the fax.
        connection_id: nil,
        # ISO 8601 timestamp when resource was created
        created_at: nil,
        # The direction of the fax.
        direction: nil,
        # The phone number, in E.164 format, the fax will be sent from.
        from: nil,
        # The string used as the caller id name (SIP From Display Name) presented to the
        # destination (`to` number).
        from_display_name: nil,
        # The media_name used for the fax's media. Must point to a file previously
        # uploaded to api.telnyx.com/v2/media by the same user/organization. media_name
        # and media_url/contents can't be submitted together.
        media_name: nil,
        # The URL (or list of URLs) to the PDF used for the fax's media. media_url and
        # media_name/contents can't be submitted together.
        media_url: nil,
        # If `store_preview` was set to `true`, this is a link to temporary location. Link
        # expires after 10 minutes.
        preview_url: nil,
        # The quality of the fax. The `ultra` settings provides the highest quality
        # available, but also present longer fax processing times. `ultra_light` is best
        # suited for images, wihle `ultra_dark` is best suited for text.
        quality: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Status of the fax
        status: nil,
        # Should fax media be stored on temporary URL. It does not support media_name.
        store_media: nil,
        # If store_media was set to true, this is a link to temporary location. Link
        # expires after 10 minutes.
        stored_media_url: nil,
        # The phone number, in E.164 format, the fax will be sent to or SIP URI
        to: nil,
        # ISO 8601 timestamp when resource was updated
        updated_at: nil,
        # Optional failover URL that will receive fax webhooks if webhook_url doesn't
        # return a 2XX response
        webhook_failover_url: nil,
        # URL that will receive fax webhooks
        webhook_url: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            client_state: String,
            connection_id: String,
            created_at: Time,
            direction: Telnyx::Fax::Direction::TaggedSymbol,
            from: String,
            from_display_name: String,
            media_name: String,
            media_url: String,
            preview_url: String,
            quality: Telnyx::Fax::Quality::TaggedSymbol,
            record_type: Telnyx::Fax::RecordType::TaggedSymbol,
            status: Telnyx::Fax::Status::TaggedSymbol,
            store_media: T::Boolean,
            stored_media_url: String,
            to: String,
            updated_at: Time,
            webhook_failover_url: String,
            webhook_url: String
          }
        )
      end
      def to_hash
      end

      # The direction of the fax.
      module Direction
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Fax::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INBOUND = T.let(:inbound, Telnyx::Fax::Direction::TaggedSymbol)
        OUTBOUND = T.let(:outbound, Telnyx::Fax::Direction::TaggedSymbol)

        sig { override.returns(T::Array[Telnyx::Fax::Direction::TaggedSymbol]) }
        def self.values
        end
      end

      # The quality of the fax. The `ultra` settings provides the highest quality
      # available, but also present longer fax processing times. `ultra_light` is best
      # suited for images, wihle `ultra_dark` is best suited for text.
      module Quality
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Fax::Quality) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NORMAL = T.let(:normal, Telnyx::Fax::Quality::TaggedSymbol)
        HIGH = T.let(:high, Telnyx::Fax::Quality::TaggedSymbol)
        VERY_HIGH = T.let(:very_high, Telnyx::Fax::Quality::TaggedSymbol)
        ULTRA_LIGHT = T.let(:ultra_light, Telnyx::Fax::Quality::TaggedSymbol)
        ULTRA_DARK = T.let(:ultra_dark, Telnyx::Fax::Quality::TaggedSymbol)

        sig { override.returns(T::Array[Telnyx::Fax::Quality::TaggedSymbol]) }
        def self.values
        end
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Fax::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAX = T.let(:fax, Telnyx::Fax::RecordType::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::Fax::RecordType::TaggedSymbol])
        end
        def self.values
        end
      end

      # Status of the fax
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Fax::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED = T.let(:queued, Telnyx::Fax::Status::TaggedSymbol)
        MEDIA_PROCESSED =
          T.let(:"media.processed", Telnyx::Fax::Status::TaggedSymbol)
        ORIGINATED = T.let(:originated, Telnyx::Fax::Status::TaggedSymbol)
        SENDING = T.let(:sending, Telnyx::Fax::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, Telnyx::Fax::Status::TaggedSymbol)
        FAILED = T.let(:failed, Telnyx::Fax::Status::TaggedSymbol)
        INITIATED = T.let(:initiated, Telnyx::Fax::Status::TaggedSymbol)
        RECEIVING = T.let(:receiving, Telnyx::Fax::Status::TaggedSymbol)
        MEDIA_PROCESSING =
          T.let(:"media.processing", Telnyx::Fax::Status::TaggedSymbol)
        RECEIVED = T.let(:received, Telnyx::Fax::Status::TaggedSymbol)

        sig { override.returns(T::Array[Telnyx::Fax::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
