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
        #   The reference's email address. We email them scheduling and dial-in instructions
        #   before we call, so use an address they check.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute full_name
        #   The full name of the person we should contact as your reference.
        #
        #   @return [String, nil]
        optional :full_name, String

        # @!attribute job_title
        #   The reference contact's job title, for example CFO or Owner.
        #
        #   @return [String, nil]
        optional :job_title, String, nil?: true

        # @!attribute organization
        #   The name of the organization the reference contact works for.
        #
        #   @return [String, nil]
        optional :organization, String, nil?: true

        # @!attribute phone_e164
        #   The reference's phone number in E.164 format, for example +14155550123. We call
        #   this number during their local business hours.
        #
        #   @return [String, nil]
        optional :phone_e164, String

        # @!attribute relationship_to_registrant
        #   How the reference contact is related to the registering business.
        #
        #   @return [String, nil]
        optional :relationship_to_registrant, String, nil?: true

        # @!attribute timezone
        #   The reference's IANA time zone, for example America/New_York. We only call
        #   during their local 8am to 9pm hours, which is why we need it.
        #
        #   @return [String, nil]
        optional :timezone, String

        # @!method initialize(dir_id:, ref_type:, slot:, email: nil, full_name: nil, job_title: nil, organization: nil, phone_e164: nil, relationship_to_registrant: nil, timezone: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::ReferenceUpdateParams} for more details.
        #
        #   @param dir_id [String]
        #
        #   @param ref_type [Symbol, Telnyx::Models::Dir::ReferenceUpdateParams::RefType]
        #
        #   @param slot [Integer]
        #
        #   @param email [String] The reference's email address. We email them scheduling and dial-in instructions
        #
        #   @param full_name [String] The full name of the person we should contact as your reference.
        #
        #   @param job_title [String, nil] The reference contact's job title, for example CFO or Owner.
        #
        #   @param organization [String, nil] The name of the organization the reference contact works for.
        #
        #   @param phone_e164 [String] The reference's phone number in E.164 format, for example +14155550123. We call
        #
        #   @param relationship_to_registrant [String, nil] How the reference contact is related to the registering business.
        #
        #   @param timezone [String] The reference's IANA time zone, for example America/New_York. We only call durin
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
