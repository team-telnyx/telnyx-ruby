# typed: strong

module Telnyx
  module Models
    class FaxCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::FaxCreateParams, Telnyx::Internal::AnyHash)
        end

      # The connection ID to send the fax with.
      sig { returns(String) }
      attr_accessor :connection_id

      # The phone number, in E.164 format, the fax will be sent from.
      sig { returns(String) }
      attr_accessor :from

      # The phone number, in E.164 format, the fax will be sent to or SIP URI
      sig { returns(String) }
      attr_accessor :to

      # Use this field to add state to every subsequent webhook. It must be a valid
      # Base-64 encoded string.
      sig { returns(T.nilable(String)) }
      attr_reader :client_state

      sig { params(client_state: String).void }
      attr_writer :client_state

      # The `from_display_name` string to be used as the caller id name (SIP From
      # Display Name) presented to the destination (`to` number). The string should have
      # a maximum of 128 characters, containing only letters, numbers, spaces, and
      # -\_~!.+ special characters. If ommited, the display name will be the same as the
      # number in the `from` field.
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

      # The flag to enable monochrome, true black and white fax results.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :monochrome

      sig { params(monochrome: T::Boolean).void }
      attr_writer :monochrome

      # The format for the preview file in case the `store_preview` is `true`.
      sig do
        returns(T.nilable(Telnyx::FaxCreateParams::PreviewFormat::OrSymbol))
      end
      attr_reader :preview_format

      sig do
        params(
          preview_format: Telnyx::FaxCreateParams::PreviewFormat::OrSymbol
        ).void
      end
      attr_writer :preview_format

      # The quality of the fax. The `ultra` settings provides the highest quality
      # available, but also present longer fax processing times. `ultra_light` is best
      # suited for images, wihle `ultra_dark` is best suited for text.
      sig { returns(T.nilable(Telnyx::FaxCreateParams::Quality::OrSymbol)) }
      attr_reader :quality

      sig { params(quality: Telnyx::FaxCreateParams::Quality::OrSymbol).void }
      attr_writer :quality

      # Should fax media be stored on temporary URL. It does not support media_name,
      # they can't be submitted together.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :store_media

      sig { params(store_media: T::Boolean).void }
      attr_writer :store_media

      # Should fax preview be stored on temporary URL.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :store_preview

      sig { params(store_preview: T::Boolean).void }
      attr_writer :store_preview

      # The flag to disable the T.38 protocol.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :t38_enabled

      sig { params(t38_enabled: T::Boolean).void }
      attr_writer :t38_enabled

      # Use this field to override the URL to which Telnyx will send subsequent webhooks
      # for this fax.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          connection_id: String,
          from: String,
          to: String,
          client_state: String,
          from_display_name: String,
          media_name: String,
          media_url: String,
          monochrome: T::Boolean,
          preview_format: Telnyx::FaxCreateParams::PreviewFormat::OrSymbol,
          quality: Telnyx::FaxCreateParams::Quality::OrSymbol,
          store_media: T::Boolean,
          store_preview: T::Boolean,
          t38_enabled: T::Boolean,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The connection ID to send the fax with.
        connection_id:,
        # The phone number, in E.164 format, the fax will be sent from.
        from:,
        # The phone number, in E.164 format, the fax will be sent to or SIP URI
        to:,
        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        client_state: nil,
        # The `from_display_name` string to be used as the caller id name (SIP From
        # Display Name) presented to the destination (`to` number). The string should have
        # a maximum of 128 characters, containing only letters, numbers, spaces, and
        # -\_~!.+ special characters. If ommited, the display name will be the same as the
        # number in the `from` field.
        from_display_name: nil,
        # The media_name used for the fax's media. Must point to a file previously
        # uploaded to api.telnyx.com/v2/media by the same user/organization. media_name
        # and media_url/contents can't be submitted together.
        media_name: nil,
        # The URL (or list of URLs) to the PDF used for the fax's media. media_url and
        # media_name/contents can't be submitted together.
        media_url: nil,
        # The flag to enable monochrome, true black and white fax results.
        monochrome: nil,
        # The format for the preview file in case the `store_preview` is `true`.
        preview_format: nil,
        # The quality of the fax. The `ultra` settings provides the highest quality
        # available, but also present longer fax processing times. `ultra_light` is best
        # suited for images, wihle `ultra_dark` is best suited for text.
        quality: nil,
        # Should fax media be stored on temporary URL. It does not support media_name,
        # they can't be submitted together.
        store_media: nil,
        # Should fax preview be stored on temporary URL.
        store_preview: nil,
        # The flag to disable the T.38 protocol.
        t38_enabled: nil,
        # Use this field to override the URL to which Telnyx will send subsequent webhooks
        # for this fax.
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            from: String,
            to: String,
            client_state: String,
            from_display_name: String,
            media_name: String,
            media_url: String,
            monochrome: T::Boolean,
            preview_format: Telnyx::FaxCreateParams::PreviewFormat::OrSymbol,
            quality: Telnyx::FaxCreateParams::Quality::OrSymbol,
            store_media: T::Boolean,
            store_preview: T::Boolean,
            t38_enabled: T::Boolean,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The format for the preview file in case the `store_preview` is `true`.
      module PreviewFormat
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::FaxCreateParams::PreviewFormat) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PDF = T.let(:pdf, Telnyx::FaxCreateParams::PreviewFormat::TaggedSymbol)
        TIFF =
          T.let(:tiff, Telnyx::FaxCreateParams::PreviewFormat::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::FaxCreateParams::PreviewFormat::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The quality of the fax. The `ultra` settings provides the highest quality
      # available, but also present longer fax processing times. `ultra_light` is best
      # suited for images, wihle `ultra_dark` is best suited for text.
      module Quality
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::FaxCreateParams::Quality) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NORMAL = T.let(:normal, Telnyx::FaxCreateParams::Quality::TaggedSymbol)
        HIGH = T.let(:high, Telnyx::FaxCreateParams::Quality::TaggedSymbol)
        VERY_HIGH =
          T.let(:very_high, Telnyx::FaxCreateParams::Quality::TaggedSymbol)
        ULTRA_LIGHT =
          T.let(:ultra_light, Telnyx::FaxCreateParams::Quality::TaggedSymbol)
        ULTRA_DARK =
          T.let(:ultra_dark, Telnyx::FaxCreateParams::Quality::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::FaxCreateParams::Quality::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
