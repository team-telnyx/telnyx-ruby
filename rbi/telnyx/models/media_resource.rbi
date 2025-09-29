# typed: strong

module Telnyx
  module Models
    class MediaResource < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::MediaResource, Telnyx::Internal::AnyHash) }

      # Content type of the file
      sig { returns(T.nilable(String)) }
      attr_reader :content_type

      sig { params(content_type: String).void }
      attr_writer :content_type

      # ISO 8601 formatted date of when the media resource was created
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # ISO 8601 formatted date of when the media resource will expire and be deleted.
      sig { returns(T.nilable(String)) }
      attr_reader :expires_at

      sig { params(expires_at: String).void }
      attr_writer :expires_at

      # Uniquely identifies a media resource.
      sig { returns(T.nilable(String)) }
      attr_reader :media_name

      sig { params(media_name: String).void }
      attr_writer :media_name

      # ISO 8601 formatted date of when the media resource was last updated
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          content_type: String,
          created_at: String,
          expires_at: String,
          media_name: String,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Content type of the file
        content_type: nil,
        # ISO 8601 formatted date of when the media resource was created
        created_at: nil,
        # ISO 8601 formatted date of when the media resource will expire and be deleted.
        expires_at: nil,
        # Uniquely identifies a media resource.
        media_name: nil,
        # ISO 8601 formatted date of when the media resource was last updated
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            content_type: String,
            created_at: String,
            expires_at: String,
            media_name: String,
            updated_at: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
