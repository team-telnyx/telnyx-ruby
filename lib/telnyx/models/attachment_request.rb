# frozen_string_literal: true

module Telnyx
  module Models
    class AttachmentRequest < Telnyx::Internal::Type::BaseModel
      # @!attribute content
      #   Attachment content, typically Base64-encoded. Defaults to empty string when
      #   omitted.
      #
      #   @return [String, nil]
      optional :content, String

      # @!attribute content_id
      #   MIME Content-ID used to reference an inline attachment.
      #
      #   @return [String, nil]
      optional :content_id, String, nil?: true

      # @!attribute content_type
      #   MIME content type. Defaults to "application/octet-stream" when omitted.
      #
      #   @return [String, nil]
      optional :content_type, String

      # @!attribute disposition
      #   MIME disposition (`attachment` or `inline`).
      #
      #   @return [String, nil]
      optional :disposition, String

      # @!attribute filename
      #   Attachment filename. Defaults to "attachment" when omitted.
      #
      #   @return [String, nil]
      optional :filename, String

      # @!method initialize(content: nil, content_id: nil, content_type: nil, disposition: nil, filename: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AttachmentRequest} for more details.
      #
      #   @param content [String] Attachment content, typically Base64-encoded. Defaults to empty string when omit
      #
      #   @param content_id [String, nil] MIME Content-ID used to reference an inline attachment.
      #
      #   @param content_type [String] MIME content type. Defaults to "application/octet-stream" when omitted.
      #
      #   @param disposition [String] MIME disposition (`attachment` or `inline`).
      #
      #   @param filename [String] Attachment filename. Defaults to "attachment" when omitted.
    end
  end
end
