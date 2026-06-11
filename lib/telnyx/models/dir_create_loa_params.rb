# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#create_loa
    class DirCreateLoaParams < Telnyx::Internal::Type::BaseModel
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
      #   @return [Telnyx::Models::DirCreateLoaParams::Agent, nil]
      optional :agent, -> { Telnyx::DirCreateLoaParams::Agent }

      # @!attribute signature
      #   Optional. When provided the rendered PDF embeds the signature image, printed
      #   name, and signed-at date. When absent the PDF is returned unsigned so the
      #   customer can sign externally and upload it via the Documents API.
      #
      #   @return [Telnyx::Models::DirCreateLoaParams::Signature, nil]
      optional :signature, -> { Telnyx::DirCreateLoaParams::Signature }

      # @!method initialize(dir_id:, phone_numbers:, agent: nil, signature: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirCreateLoaParams} for more details.
      #
      #   @param dir_id [String]
      #
      #   @param phone_numbers [Array<String>] Telephone numbers to authorize on the DIR, in `+E164` format (`+` followed by 10
      #
      #   @param agent [Telnyx::Models::DirCreateLoaParams::Agent] Third-party reseller / partner managing the enterprise's phone numbers. Omit whe
      #
      #   @param signature [Telnyx::Models::DirCreateLoaParams::Signature] Optional. When provided the rendered PDF embeds the signature image, printed nam
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
        #   {Telnyx::Models::DirCreateLoaParams::Signature} for more details.
        #
        #   Optional. When provided the rendered PDF embeds the signature image, printed
        #   name, and signed-at date. When absent the PDF is returned unsigned so the
        #   customer can sign externally and upload it via the Documents API.
        #
        #   @param image_base64 [String] PNG image, base64-encoded.
        #
        #   @param signer_name [String, nil] Optional. When absent the rendered PDF falls back to the enterprise contact's le
      end
    end
  end
end
