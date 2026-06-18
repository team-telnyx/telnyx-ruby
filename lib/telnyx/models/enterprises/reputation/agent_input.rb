# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class AgentInput < Telnyx::Internal::Type::BaseModel
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
      end
    end
  end
end
