# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class AgentInput < Telnyx::Internal::Type::BaseModel
          # @!attribute administrative_area
          #   The state or province of the partner's address, as its code, for example IL or
          #   ON.
          #
          #   @return [String]
          required :administrative_area, String

          # @!attribute city
          #   The city of the partner's address.
          #
          #   @return [String]
          required :city, String

          # @!attribute contact_email
          #   The email address of the contact person at the partner.
          #
          #   @return [String]
          required :contact_email, String

          # @!attribute contact_name
          #   The name of a contact person at the partner.
          #
          #   @return [String]
          required :contact_name, String

          # @!attribute contact_phone
          #   The phone number of the contact person at the partner, in E.164 format, for
          #   example +13125550000.
          #
          #   @return [String]
          required :contact_phone, String

          # @!attribute contact_title
          #   The job title of the contact person at the partner.
          #
          #   @return [String]
          required :contact_title, String

          # @!attribute country
          #   The two-letter country code of the partner's address, for example US.
          #
          #   @return [String]
          required :country, String

          # @!attribute legal_name
          #   The legal name of the third-party partner or reseller managing these numbers on
          #   your behalf.
          #
          #   @return [String]
          required :legal_name, String

          # @!attribute postal_code
          #   The postal or ZIP code of the partner's address.
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute street_address
          #   The street address of the partner, including the building number and street
          #   name.
          #
          #   @return [String]
          required :street_address, String

          # @!attribute dba
          #   The trade name (Doing Business As) the partner operates under, if different from
          #   its legal name. Leave blank if it does not apply.
          #
          #   @return [String, nil]
          optional :dba, String, nil?: true

          # @!attribute extended_address
          #   An optional second address line for the partner, such as a suite, unit, or
          #   floor. Leave blank if it does not apply.
          #
          #   @return [String, nil]
          optional :extended_address, String, nil?: true

          # @!method initialize(administrative_area:, city:, contact_email:, contact_name:, contact_phone:, contact_title:, country:, legal_name:, postal_code:, street_address:, dba: nil, extended_address: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::AgentInput} for more details.
          #
          #   Third-party reseller / partner managing the enterprise's phone numbers. Omit
          #   when the enterprise works directly with Telnyx.
          #
          #   @param administrative_area [String] The state or province of the partner's address, as its code, for example IL or O
          #
          #   @param city [String] The city of the partner's address.
          #
          #   @param contact_email [String] The email address of the contact person at the partner.
          #
          #   @param contact_name [String] The name of a contact person at the partner.
          #
          #   @param contact_phone [String] The phone number of the contact person at the partner, in E.164 format, for exam
          #
          #   @param contact_title [String] The job title of the contact person at the partner.
          #
          #   @param country [String] The two-letter country code of the partner's address, for example US.
          #
          #   @param legal_name [String] The legal name of the third-party partner or reseller managing these numbers on
          #
          #   @param postal_code [String] The postal or ZIP code of the partner's address.
          #
          #   @param street_address [String] The street address of the partner, including the building number and street name
          #
          #   @param dba [String, nil] The trade name (Doing Business As) the partner operates under, if different from
          #
          #   @param extended_address [String, nil] An optional second address line for the partner, such as a suite, unit, or floor
        end
      end
    end
  end
end
