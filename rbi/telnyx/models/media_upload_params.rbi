# typed: strong

module Telnyx
  module Models
    class MediaUploadParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MediaUploadParams, Telnyx::Internal::AnyHash)
        end

      # The URL where the media to be stored in Telnyx network is currently hosted. The
      # maximum allowed size is 20 MB.
      sig { returns(String) }
      attr_accessor :media_url

      # The unique identifier of a file.
      sig { returns(T.nilable(String)) }
      attr_reader :media_name

      sig { params(media_name: String).void }
      attr_writer :media_name

      # The number of seconds after which the media resource will be deleted, defaults
      # to 2 days. The maximum allowed vale is 630720000, which translates to 20 years.
      sig { returns(T.nilable(Integer)) }
      attr_reader :ttl_secs

      sig { params(ttl_secs: Integer).void }
      attr_writer :ttl_secs

      sig do
        params(
          media_url: String,
          media_name: String,
          ttl_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The URL where the media to be stored in Telnyx network is currently hosted. The
        # maximum allowed size is 20 MB.
        media_url:,
        # The unique identifier of a file.
        media_name: nil,
        # The number of seconds after which the media resource will be deleted, defaults
        # to 2 days. The maximum allowed vale is 630720000, which translates to 20 years.
        ttl_secs: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            media_url: String,
            media_name: String,
            ttl_secs: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
