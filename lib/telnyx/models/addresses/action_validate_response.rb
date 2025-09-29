# frozen_string_literal: true

module Telnyx
  module Models
    module Addresses
      # @see Telnyx::Resources::Addresses::Actions#validate
      class ActionValidateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Addresses::ActionValidateResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Addresses::ActionValidateResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Addresses::ActionValidateResponse::Data]

        # @see Telnyx::Models::Addresses::ActionValidateResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute result
          #   Indicates whether an address is valid or invalid.
          #
          #   @return [Symbol, Telnyx::Models::Addresses::ActionValidateResponse::Data::Result]
          required :result, enum: -> { Telnyx::Models::Addresses::ActionValidateResponse::Data::Result }

          # @!attribute suggested
          #   Provides normalized address when available.
          #
          #   @return [Telnyx::Models::Addresses::ActionValidateResponse::Data::Suggested]
          required :suggested, -> { Telnyx::Models::Addresses::ActionValidateResponse::Data::Suggested }

          # @!attribute errors
          #
          #   @return [Array<Telnyx::Models::APIError>, nil]
          optional :errors, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::APIError] }

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!method initialize(result:, suggested:, errors: nil, record_type: nil)
          #   @param result [Symbol, Telnyx::Models::Addresses::ActionValidateResponse::Data::Result] Indicates whether an address is valid or invalid.
          #
          #   @param suggested [Telnyx::Models::Addresses::ActionValidateResponse::Data::Suggested] Provides normalized address when available.
          #
          #   @param errors [Array<Telnyx::Models::APIError>]
          #
          #   @param record_type [String] Identifies the type of the resource.

          # Indicates whether an address is valid or invalid.
          #
          # @see Telnyx::Models::Addresses::ActionValidateResponse::Data#result
          module Result
            extend Telnyx::Internal::Type::Enum

            VALID = :valid
            INVALID = :invalid

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::Addresses::ActionValidateResponse::Data#suggested
          class Suggested < Telnyx::Internal::Type::BaseModel
            # @!attribute administrative_area
            #   The locality of the address. For US addresses, this corresponds to the state of
            #   the address.
            #
            #   @return [String, nil]
            optional :administrative_area, String

            # @!attribute country_code
            #   The two-character (ISO 3166-1 alpha-2) country code of the address.
            #
            #   @return [String, nil]
            optional :country_code, String

            # @!attribute extended_address
            #   Additional street address information about the address such as, but not limited
            #   to, unit number or apartment number.
            #
            #   @return [String, nil]
            optional :extended_address, String

            # @!attribute locality
            #   The locality of the address. For US addresses, this corresponds to the city of
            #   the address.
            #
            #   @return [String, nil]
            optional :locality, String

            # @!attribute postal_code
            #   The postal code of the address.
            #
            #   @return [String, nil]
            optional :postal_code, String

            # @!attribute street_address
            #   The primary street address information about the address.
            #
            #   @return [String, nil]
            optional :street_address, String

            # @!method initialize(administrative_area: nil, country_code: nil, extended_address: nil, locality: nil, postal_code: nil, street_address: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Addresses::ActionValidateResponse::Data::Suggested} for more
            #   details.
            #
            #   Provides normalized address when available.
            #
            #   @param administrative_area [String] The locality of the address. For US addresses, this corresponds to the state of
            #
            #   @param country_code [String] The two-character (ISO 3166-1 alpha-2) country code of the address.
            #
            #   @param extended_address [String] Additional street address information about the address such as, but not limited
            #
            #   @param locality [String] The locality of the address. For US addresses, this corresponds to the city of t
            #
            #   @param postal_code [String] The postal code of the address.
            #
            #   @param street_address [String] The primary street address information about the address.
          end
        end
      end
    end
  end
end
