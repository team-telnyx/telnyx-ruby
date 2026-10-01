# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#new_loa
    class DirNewLoaParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute dir_id
      #
      #   @return [String]
      required :dir_id, String

      # @!attribute phone_numbers
      #   Telephone numbers to authorize on the DIR, in `+E164` format (`+` followed by
      #   10-15 digits). Max 15 per request.
      #
      #   @return [Array<String>]
      required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute agent
      #   Third-party reseller / partner managing the enterprise's phone numbers. Omit
      #   when the enterprise works directly with Telnyx.
      #
      #   @return [Telnyx::Models::Enterprises::Reputation::AgentInput, nil]
      optional :agent, -> { Telnyx::Enterprises::Reputation::AgentInput }

      # @!attribute signature
      #   Optional. When provided the rendered PDF embeds the signature image, printed
      #   name, and signed-at date. When absent the PDF is returned unsigned so the
      #   customer can sign externally and upload it via the Documents API.
      #
      #   @return [Telnyx::Models::SignaturePayload, nil]
      optional :signature, -> { Telnyx::SignaturePayload }

      # @!method initialize(dir_id:, phone_numbers:, agent: nil, signature: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirNewLoaParams} for more details.
      #
      #   @param dir_id [String]
      #
      #   @param phone_numbers [Array<String>] Telephone numbers to authorize on the DIR, in `+E164` format (`+` followed by 10
      #
      #   @param agent [Telnyx::Models::Enterprises::Reputation::AgentInput] Third-party reseller / partner managing the enterprise's phone numbers. Omit whe
      #
      #   @param signature [Telnyx::Models::SignaturePayload] Optional. When provided the rendered PDF embeds the signature image, printed nam
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
