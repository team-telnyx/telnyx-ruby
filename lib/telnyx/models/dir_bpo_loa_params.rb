# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#bpo_loa
    class DirBpoLoaParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute dir_id
      #
      #   @return [String]
      required :dir_id, String

      # @!attribute bpo_enterprise_id
      #   The approved BPO enterprise the Brand Owner is authorizing. Must be a BPO
      #   account on the caller's organization that has already been approved.
      #
      #   @return [String]
      required :bpo_enterprise_id, String

      # @!attribute signature
      #   Optional. When provided the rendered PDF embeds the signature image, printed
      #   name, and signed-at date. When absent the PDF is returned unsigned so the Brand
      #   Owner can sign externally and the BPO can upload it via the Documents API.
      #
      #   @return [Telnyx::Models::SignaturePayload, nil]
      optional :signature, -> { Telnyx::SignaturePayload }

      # @!method initialize(dir_id:, bpo_enterprise_id:, signature: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirBpoLoaParams} for more details.
      #
      #   @param dir_id [String]
      #
      #   @param bpo_enterprise_id [String] The approved BPO enterprise the Brand Owner is authorizing. Must be a BPO accoun
      #
      #   @param signature [Telnyx::Models::SignaturePayload] Optional. When provided the rendered PDF embeds the signature image, printed nam
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
