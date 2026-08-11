# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class BrandContact < Telnyx::Internal::Type::BaseModel
        # @!attribute contact_type
        #
        #   @return [Symbol, Telnyx::Models::Rcs::BrandContact::ContactType]
        required :contact_type, enum: -> { Telnyx::Rcs::BrandContact::ContactType }

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #
        #   @return [String]
        required :last_name, String

        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!method initialize(contact_type:, email:, first_name:, last_name:, phone_number:, title: nil)
        #   @param contact_type [Symbol, Telnyx::Models::Rcs::BrandContact::ContactType]
        #   @param email [String]
        #   @param first_name [String]
        #   @param last_name [String]
        #   @param phone_number [String]
        #   @param title [String, nil]

        # @see Telnyx::Models::Rcs::BrandContact#contact_type
        module ContactType
          extend Telnyx::Internal::Type::Enum

          BRAND = :BRAND
          PRIMARY = :PRIMARY
          OFFICER = :OFFICER
          AGENT = :AGENT
          RESPONSIBLE_PARTY = :RESPONSIBLE_PARTY
          BILLING = :BILLING
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
