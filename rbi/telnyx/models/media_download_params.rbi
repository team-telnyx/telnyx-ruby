# typed: strong

module Telnyx
  module Models
    class MediaDownloadParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MediaDownloadParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :media_name

      sig do
        params(
          media_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(media_name:, request_options: {})
      end

      sig do
        override.returns(
          { media_name: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
