# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Loa#render
        class LoaRenderParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute agent
          #   Third-party reseller / partner managing the enterprise's phone numbers. Omit
          #   when the enterprise works directly with Telnyx.
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::AgentInput, nil]
          optional :agent, -> { Telnyx::Enterprises::Reputation::AgentInput }

          # @!attribute signature
          #   Optional signature embedded in the rendered PDF. When omitted the PDF is
          #   returned unsigned for the customer to sign and upload.
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::LoaRenderParams::Signature, nil]
          optional :signature, -> { Telnyx::Enterprises::Reputation::LoaRenderParams::Signature }

          # @!method initialize(enterprise_id:, agent: nil, signature: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::LoaRenderParams} for more details.
          #
          #   @param enterprise_id [String]
          #
          #   @param agent [Telnyx::Models::Enterprises::Reputation::AgentInput] Third-party reseller / partner managing the enterprise's phone numbers. Omit whe
          #
          #   @param signature [Telnyx::Models::Enterprises::Reputation::LoaRenderParams::Signature] Optional signature embedded in the rendered PDF. When omitted the PDF is returne
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          class Signature < Telnyx::Internal::Type::BaseModel
            # @!attribute image_base64
            #   Base64-encoded signature image.
            #
            #   @return [String]
            required :image_base64, String

            # @!attribute signer_name
            #
            #   @return [String, nil]
            optional :signer_name, String, nil?: true

            # @!method initialize(image_base64:, signer_name: nil)
            #   Optional signature embedded in the rendered PDF. When omitted the PDF is
            #   returned unsigned for the customer to sign and upload.
            #
            #   @param image_base64 [String] Base64-encoded signature image.
            #
            #   @param signer_name [String, nil]
          end
        end
      end
    end
  end
end
