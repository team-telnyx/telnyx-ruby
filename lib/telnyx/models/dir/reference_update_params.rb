# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::References#update
      class ReferenceUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute ref_type
        #
        #   @return [Symbol, Telnyx::Models::Dir::ReferenceUpdateParams::RefType]
        required :ref_type, enum: -> { Telnyx::Dir::ReferenceUpdateParams::RefType }

        # @!attribute slot
        #
        #   @return [Integer]
        required :slot, Integer

        # @!attribute email
        #   Reference contact email address.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute full_name
        #   Full name of the reference contact.
        #
        #   @return [String, nil]
        optional :full_name, String

        # @!attribute job_title
        #   Job title of the reference contact.
        #
        #   @return [String, nil]
        optional :job_title, String, nil?: true

        # @!attribute organization
        #   Organization the reference contact belongs to.
        #
        #   @return [String, nil]
        optional :organization, String, nil?: true

        # @!attribute phone_e164
        #   Reference phone number in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_e164, String

        # @!attribute relationship_to_registrant
        #   How the reference contact is related to the registering business.
        #
        #   @return [String, nil]
        optional :relationship_to_registrant, String, nil?: true

        # @!attribute timezone
        #   IANA timezone id for the reference.
        #
        #   @return [String, nil]
        optional :timezone, String

        # @!method initialize(dir_id:, ref_type:, slot:, email: nil, full_name: nil, job_title: nil, organization: nil, phone_e164: nil, relationship_to_registrant: nil, timezone: nil, request_options: {})
        #   @param dir_id [String]
        #
        #   @param ref_type [Symbol, Telnyx::Models::Dir::ReferenceUpdateParams::RefType]
        #
        #   @param slot [Integer]
        #
        #   @param email [String] Reference contact email address.
        #
        #   @param full_name [String] Full name of the reference contact.
        #
        #   @param job_title [String, nil] Job title of the reference contact.
        #
        #   @param organization [String, nil] Organization the reference contact belongs to.
        #
        #   @param phone_e164 [String] Reference phone number in E.164 format.
        #
        #   @param relationship_to_registrant [String, nil] How the reference contact is related to the registering business.
        #
        #   @param timezone [String] IANA timezone id for the reference.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module RefType
          extend Telnyx::Internal::Type::Enum

          BUSINESS = :business
          FINANCIAL = :financial

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
