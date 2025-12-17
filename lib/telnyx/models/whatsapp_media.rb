# frozen_string_literal: true

module Telnyx
  module Models
    class WhatsappMedia < Telnyx::Internal::Type::BaseModel
      # @!attribute caption
      #   media caption
      #
      #   @return [String, nil]
      optional :caption, String

      # @!attribute filename
      #   file name with extension
      #
      #   @return [String, nil]
      optional :filename, String

      # @!attribute link
      #   media URL
      #
      #   @return [String, nil]
      optional :link, String

      # @!attribute voice
      #   true if voice message
      #
      #   @return [Boolean, nil]
      optional :voice, Telnyx::Internal::Type::Boolean

      # @!method initialize(caption: nil, filename: nil, link: nil, voice: nil)
      #   @param caption [String] media caption
      #
      #   @param filename [String] file name with extension
      #
      #   @param link [String] media URL
      #
      #   @param voice [Boolean] true if voice message
    end
  end
end
