# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      class ReferenceInput < Telnyx::Internal::Type::BaseModel
        # @!attribute email
        #   Reference contact email address. Required: the reference is emailed scheduling
        #   and dial-in notices.
        #
        #   @return [String]
        required :email, String

        # @!attribute full_name
        #   Full name of the reference contact.
        #
        #   @return [String]
        required :full_name, String

        # @!attribute phone_e164
        #   Reference phone number in E.164 format, e.g. +14155550123.
        #
        #   @return [String]
        required :phone_e164, String

        # @!attribute timezone
        #   IANA timezone id for the reference (e.g. America/New_York). Required: calls are
        #   only placed within the reference's local 8am-9pm window.
        #
        #   @return [String]
        required :timezone, String

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

        # @!attribute relationship_to_registrant
        #   How the reference contact is related to the registering business.
        #
        #   @return [String, nil]
        optional :relationship_to_registrant, String, nil?: true

        # @!method initialize(email:, full_name:, phone_e164:, timezone:, job_title: nil, organization: nil, relationship_to_registrant: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::ReferenceInput} for more details.
        #
        #   One reference supplied at submit. The reference type is implied by the field
        #   that carries it (business_references vs financial_reference).
        #
        #   @param email [String] Reference contact email address. Required: the reference is emailed scheduling a
        #
        #   @param full_name [String] Full name of the reference contact.
        #
        #   @param phone_e164 [String] Reference phone number in E.164 format, e.g. +14155550123.
        #
        #   @param timezone [String] IANA timezone id for the reference (e.g. America/New_York). Required: calls are
        #
        #   @param job_title [String, nil] Job title of the reference contact.
        #
        #   @param organization [String, nil] Organization the reference contact belongs to.
        #
        #   @param relationship_to_registrant [String, nil] How the reference contact is related to the registering business.
      end
    end
  end
end
