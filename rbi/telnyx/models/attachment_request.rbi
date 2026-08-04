# typed: strong

module Telnyx
  module Models
    class AttachmentRequest < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::AttachmentRequest, Telnyx::Internal::AnyHash)
        end

      # Attachment content, typically Base64-encoded. Defaults to empty string when
      # omitted.
      sig { returns(T.nilable(String)) }
      attr_reader :content

      sig { params(content: String).void }
      attr_writer :content

      # MIME Content-ID used to reference an inline attachment.
      sig { returns(T.nilable(String)) }
      attr_accessor :content_id

      # MIME content type. Defaults to "application/octet-stream" when omitted.
      sig { returns(T.nilable(String)) }
      attr_reader :content_type

      sig { params(content_type: String).void }
      attr_writer :content_type

      # MIME disposition (`attachment` or `inline`).
      sig { returns(T.nilable(String)) }
      attr_reader :disposition

      sig { params(disposition: String).void }
      attr_writer :disposition

      # Attachment filename. Defaults to "attachment" when omitted.
      sig { returns(T.nilable(String)) }
      attr_reader :filename

      sig { params(filename: String).void }
      attr_writer :filename

      sig do
        params(
          content: String,
          content_id: T.nilable(String),
          content_type: String,
          disposition: String,
          filename: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Attachment content, typically Base64-encoded. Defaults to empty string when
        # omitted.
        content: nil,
        # MIME Content-ID used to reference an inline attachment.
        content_id: nil,
        # MIME content type. Defaults to "application/octet-stream" when omitted.
        content_type: nil,
        # MIME disposition (`attachment` or `inline`).
        disposition: nil,
        # Attachment filename. Defaults to "attachment" when omitted.
        filename: nil
      )
      end

      sig do
        override.returns(
          {
            content: String,
            content_id: T.nilable(String),
            content_type: String,
            disposition: String,
            filename: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
