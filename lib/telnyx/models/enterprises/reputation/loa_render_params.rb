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
          #   @return [Telnyx::Models::Enterprises::Reputation::LoaRenderParams::Agent, nil]
          optional :agent, -> { Telnyx::Enterprises::Reputation::LoaRenderParams::Agent }

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
          #   @param agent [Telnyx::Models::Enterprises::Reputation::LoaRenderParams::Agent] Third-party reseller / partner managing the enterprise's phone numbers. Omit whe
          #
          #   @param signature [Telnyx::Models::Enterprises::Reputation::LoaRenderParams::Signature] Optional signature embedded in the rendered PDF. When omitted the PDF is returne
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          class Agent < Telnyx::Internal::Type::BaseModel
            # @!attribute administrative_area
            #
            #   @return [String]
            required :administrative_area, String

            # @!attribute city
            #
            #   @return [String]
            required :city, String

            # @!attribute contact_email
            #
            #   @return [String]
            required :contact_email, String

            # @!attribute contact_name
            #
            #   @return [String]
            required :contact_name, String

            # @!attribute contact_phone
            #
            #   @return [String]
            required :contact_phone, String

            # @!attribute contact_title
            #
            #   @return [String]
            required :contact_title, String

            # @!attribute country
            #
            #   @return [String]
            required :country, String

            # @!attribute legal_name
            #
            #   @return [String]
            required :legal_name, String

            # @!attribute postal_code
            #
            #   @return [String]
            required :postal_code, String

            # @!attribute street_address
            #
            #   @return [String]
            required :street_address, String

            # @!attribute dba
            #
            #   @return [String, nil]
            optional :dba, String, nil?: true

            # @!attribute extended_address
            #
            #   @return [String, nil]
            optional :extended_address, String, nil?: true

            # @!method initialize(administrative_area:, city:, contact_email:, contact_name:, contact_phone:, contact_title:, country:, legal_name:, postal_code:, street_address:, dba: nil, extended_address: nil)
            #   Third-party reseller / partner managing the enterprise's phone numbers. Omit
            #   when the enterprise works directly with Telnyx.
            #
            #   @param administrative_area [String]
            #   @param city [String]
            #   @param contact_email [String]
            #   @param contact_name [String]
            #   @param contact_phone [String]
            #   @param contact_title [String]
            #   @param country [String]
            #   @param legal_name [String]
            #   @param postal_code [String]
            #   @param street_address [String]
            #   @param dba [String, nil]
            #   @param extended_address [String, nil]
          end

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
