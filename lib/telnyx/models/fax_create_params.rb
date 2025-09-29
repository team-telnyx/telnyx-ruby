# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Faxes#create
    class FaxCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute connection_id
      #   The connection ID to send the fax with.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute from
      #   The phone number, in E.164 format, the fax will be sent from.
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #   The phone number, in E.164 format, the fax will be sent to or SIP URI
      #
      #   @return [String]
      required :to, String

      # @!attribute client_state
      #   Use this field to add state to every subsequent webhook. It must be a valid
      #   Base-64 encoded string.
      #
      #   @return [String, nil]
      optional :client_state, String

      # @!attribute from_display_name
      #   The `from_display_name` string to be used as the caller id name (SIP From
      #   Display Name) presented to the destination (`to` number). The string should have
      #   a maximum of 128 characters, containing only letters, numbers, spaces, and
      #   -\_~!.+ special characters. If ommited, the display name will be the same as the
      #   number in the `from` field.
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

      # @!attribute monochrome
      #   The flag to enable monochrome, true black and white fax results.
      #
      #   @return [Boolean, nil]
      optional :monochrome, Telnyx::Internal::Type::Boolean

      # @!attribute preview_format
      #   The format for the preview file in case the `store_preview` is `true`.
      #
      #   @return [Symbol, Telnyx::Models::FaxCreateParams::PreviewFormat, nil]
      optional :preview_format, enum: -> { Telnyx::FaxCreateParams::PreviewFormat }

      # @!attribute quality
      #   The quality of the fax. The `ultra` settings provides the highest quality
      #   available, but also present longer fax processing times. `ultra_light` is best
      #   suited for images, wihle `ultra_dark` is best suited for text.
      #
      #   @return [Symbol, Telnyx::Models::FaxCreateParams::Quality, nil]
      optional :quality, enum: -> { Telnyx::FaxCreateParams::Quality }

      # @!attribute store_media
      #   Should fax media be stored on temporary URL. It does not support media_name,
      #   they can't be submitted together.
      #
      #   @return [Boolean, nil]
      optional :store_media, Telnyx::Internal::Type::Boolean

      # @!attribute store_preview
      #   Should fax preview be stored on temporary URL.
      #
      #   @return [Boolean, nil]
      optional :store_preview, Telnyx::Internal::Type::Boolean

      # @!attribute t38_enabled
      #   The flag to disable the T.38 protocol.
      #
      #   @return [Boolean, nil]
      optional :t38_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute webhook_url
      #   Use this field to override the URL to which Telnyx will send subsequent webhooks
      #   for this fax.
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(connection_id:, from:, to:, client_state: nil, from_display_name: nil, media_name: nil, media_url: nil, monochrome: nil, preview_format: nil, quality: nil, store_media: nil, store_preview: nil, t38_enabled: nil, webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::FaxCreateParams} for more details.
      #
      #   @param connection_id [String] The connection ID to send the fax with.
      #
      #   @param from [String] The phone number, in E.164 format, the fax will be sent from.
      #
      #   @param to [String] The phone number, in E.164 format, the fax will be sent to or SIP URI
      #
      #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
      #
      #   @param from_display_name [String] The `from_display_name` string to be used as the caller id name (SIP From Displa
      #
      #   @param media_name [String] The media_name used for the fax's media. Must point to a file previously uploade
      #
      #   @param media_url [String] The URL (or list of URLs) to the PDF used for the fax's media. media_url and med
      #
      #   @param monochrome [Boolean] The flag to enable monochrome, true black and white fax results.
      #
      #   @param preview_format [Symbol, Telnyx::Models::FaxCreateParams::PreviewFormat] The format for the preview file in case the `store_preview` is `true`.
      #
      #   @param quality [Symbol, Telnyx::Models::FaxCreateParams::Quality] The quality of the fax. The `ultra` settings provides the highest quality availa
      #
      #   @param store_media [Boolean] Should fax media be stored on temporary URL. It does not support media_name, the
      #
      #   @param store_preview [Boolean] Should fax preview be stored on temporary URL.
      #
      #   @param t38_enabled [Boolean] The flag to disable the T.38 protocol.
      #
      #   @param webhook_url [String] Use this field to override the URL to which Telnyx will send subsequent webhooks
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The format for the preview file in case the `store_preview` is `true`.
      module PreviewFormat
        extend Telnyx::Internal::Type::Enum

        PDF = :pdf
        TIFF = :tiff

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The quality of the fax. The `ultra` settings provides the highest quality
      # available, but also present longer fax processing times. `ultra_light` is best
      # suited for images, wihle `ultra_dark` is best suited for text.
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
    end
  end
end
