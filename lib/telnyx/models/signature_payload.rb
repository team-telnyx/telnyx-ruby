# frozen_string_literal: true

module Telnyx
  module Models
    class SignaturePayload < Telnyx::Internal::Type::BaseModel
      # @!attribute image_base64
      #   PNG image, base64-encoded.
      #
      #   @return [String]
      required :image_base64, String

      # @!attribute signer_name
      #   Optional. When absent the rendered PDF falls back to the enterprise contact's
      #   legal name.
      #
      #   @return [String, nil]
      optional :signer_name, String, nil?: true

      # @!method initialize(image_base64:, signer_name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SignaturePayload} for more details.
      #
      #   @param image_base64 [String] PNG image, base64-encoded.
      #
      #   @param signer_name [String, nil] Optional. When absent the rendered PDF falls back to the enterprise contact's le
    end
  end
end
