# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberLookup#retrieve
    class NumberLookupRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberLookupRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::NumberLookupRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NumberLookupRetrieveResponse::Data]

      # @see Telnyx::Models::NumberLookupRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute caller_identity
        #   Identity information for the phone number's owner, including name and postal
        #   address. Populated when `type=caller-identity` is requested.
        #
        #   @return [Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerIdentity, nil]
        optional :caller_identity, -> { Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerIdentity }

        # @!attribute caller_name
        #
        #   @return [Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerName, nil]
        optional :caller_name, -> { Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerName }

        # @!attribute carrier
        #
        #   @return [Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier, nil]
        optional :carrier, -> { Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier }

        # @!attribute country_code
        #   Region code that matches the specific country calling code
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute enhanced_caller_name
        #   Enhanced caller name for the phone number's owner. Populated when
        #   `type=enhanced-caller-name` is requested.
        #
        #   @return [Telnyx::Models::NumberLookupRetrieveResponse::Data::EnhancedCallerName, nil]
        optional :enhanced_caller_name,
                 -> { Telnyx::Models::NumberLookupRetrieveResponse::Data::EnhancedCallerName }

        # @!attribute fraud
        #   Unused
        #
        #   @return [String, nil]
        optional :fraud, String, nil?: true

        # @!attribute national_format
        #   Hyphen-separated national number, preceded by the national destination code
        #   (NDC), with a 0 prefix, if an NDC is found
        #
        #   @return [String, nil]
        optional :national_format, String

        # @!attribute nnid_override
        #   Network number ID (NNID) override for the phone number, when one applies
        #   (available only to accounts enabled for NNID); otherwise null.
        #
        #   @return [Telnyx::Models::NumberLookupRetrieveResponse::Data::NnidOverride, nil]
        optional :nnid_override,
                 -> { Telnyx::Models::NumberLookupRetrieveResponse::Data::NnidOverride },
                 nil?: true

        # @!attribute phone_number
        #   E164-formatted phone number
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute portability
        #
        #   @return [Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability, nil]
        optional :portability, -> { Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability }

        # @!attribute record_type
        #   Identifies the type of record
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute valid_number
        #   Indicates whether the phone number is valid.
        #
        #   @return [Boolean, nil]
        optional :valid_number, Telnyx::Internal::Type::Boolean

        # @!method initialize(caller_identity: nil, caller_name: nil, carrier: nil, country_code: nil, enhanced_caller_name: nil, fraud: nil, national_format: nil, nnid_override: nil, phone_number: nil, portability: nil, record_type: nil, valid_number: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::NumberLookupRetrieveResponse::Data} for more details.
        #
        #   @param caller_identity [Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerIdentity] Identity information for the phone number's owner, including name and postal add
        #
        #   @param caller_name [Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerName]
        #
        #   @param carrier [Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier]
        #
        #   @param country_code [String] Region code that matches the specific country calling code
        #
        #   @param enhanced_caller_name [Telnyx::Models::NumberLookupRetrieveResponse::Data::EnhancedCallerName] Enhanced caller name for the phone number's owner. Populated when `type=enhanced
        #
        #   @param fraud [String, nil] Unused
        #
        #   @param national_format [String] Hyphen-separated national number, preceded by the national destination code (NDC
        #
        #   @param nnid_override [Telnyx::Models::NumberLookupRetrieveResponse::Data::NnidOverride, nil] Network number ID (NNID) override for the phone number, when one applies (availa
        #
        #   @param phone_number [String] E164-formatted phone number
        #
        #   @param portability [Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability]
        #
        #   @param record_type [String] Identifies the type of record
        #
        #   @param valid_number [Boolean] Indicates whether the phone number is valid.

        # @see Telnyx::Models::NumberLookupRetrieveResponse::Data#caller_identity
        class CallerIdentity < Telnyx::Internal::Type::BaseModel
          # @!attribute address
          #   Postal address associated with the phone number's owner.
          #
          #   @return [Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerIdentity::Address, nil]
          optional :address, -> { Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerIdentity::Address }

          # @!attribute confidence_score
          #   How strongly the phone number is linked to the returned name, on a scale of 50
          #   to 90 (higher means more supporting signals). Reflects signal strength, not
          #   probability: 70 indicates stronger, more consistent evidence than 60, not a 70%
          #   chance of being correct. As a guide, 70+ is high confidence, 60 moderate, and 50
          #   limited. Below 50 no name is returned, so scores under 50 are never present.
          #
          #   @return [Float, nil]
          optional :confidence_score, Float, nil?: true

          # @!attribute error_code
          #   A lookup-specific error code if the identity could not be resolved; otherwise
          #   null.
          #
          #   @return [String, nil]
          optional :error_code, String, nil?: true

          # @!attribute name
          #   The name associated with the phone number.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!method initialize(address: nil, confidence_score: nil, error_code: nil, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerIdentity} for more
          #   details.
          #
          #   Identity information for the phone number's owner, including name and postal
          #   address. Populated when `type=caller-identity` is requested.
          #
          #   @param address [Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerIdentity::Address] Postal address associated with the phone number's owner.
          #
          #   @param confidence_score [Float, nil] How strongly the phone number is linked to the returned name, on a scale of 50 t
          #
          #   @param error_code [String, nil] A lookup-specific error code if the identity could not be resolved; otherwise nu
          #
          #   @param name [String, nil] The name associated with the phone number.

          # @see Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerIdentity#address
          class Address < Telnyx::Internal::Type::BaseModel
            # @!attribute city
            #   City.
            #
            #   @return [String, nil]
            optional :city, String, nil?: true

            # @!attribute country_code
            #   Two-letter ISO 3166-1 country code.
            #
            #   @return [String, nil]
            optional :country_code, String, nil?: true

            # @!attribute postal_code
            #   Postal or ZIP code.
            #
            #   @return [String, nil]
            optional :postal_code, String, nil?: true

            # @!attribute state_code
            #   Two-letter state or province code.
            #
            #   @return [String, nil]
            optional :state_code, String, nil?: true

            # @!attribute street_line_1
            #   First line of the street address.
            #
            #   @return [String, nil]
            optional :street_line_1, String, nil?: true

            # @!attribute street_line_2
            #   Second line of the street address, if any.
            #
            #   @return [String, nil]
            optional :street_line_2, String, nil?: true

            # @!attribute zip4
            #   ZIP+4 extension, if available.
            #
            #   @return [String, nil]
            optional :zip4, String, nil?: true

            # @!method initialize(city: nil, country_code: nil, postal_code: nil, state_code: nil, street_line_1: nil, street_line_2: nil, zip4: nil)
            #   Postal address associated with the phone number's owner.
            #
            #   @param city [String, nil] City.
            #
            #   @param country_code [String, nil] Two-letter ISO 3166-1 country code.
            #
            #   @param postal_code [String, nil] Postal or ZIP code.
            #
            #   @param state_code [String, nil] Two-letter state or province code.
            #
            #   @param street_line_1 [String, nil] First line of the street address.
            #
            #   @param street_line_2 [String, nil] Second line of the street address, if any.
            #
            #   @param zip4 [String, nil] ZIP+4 extension, if available.
          end
        end

        # @see Telnyx::Models::NumberLookupRetrieveResponse::Data#caller_name
        class CallerName < Telnyx::Internal::Type::BaseModel
          # @!attribute caller_name
          #   The name of the requested phone number's owner as per the CNAM database
          #
          #   @return [String, nil]
          optional :caller_name, String

          # @!attribute error_code
          #   A caller-name lookup specific error code, expressed as a stringified 5-digit
          #   integer
          #
          #   @return [String, nil]
          optional :error_code, String

          # @!method initialize(caller_name: nil, error_code: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerName} for more
          #   details.
          #
          #   @param caller_name [String] The name of the requested phone number's owner as per the CNAM database
          #
          #   @param error_code [String] A caller-name lookup specific error code, expressed as a stringified 5-digit int
        end

        # @see Telnyx::Models::NumberLookupRetrieveResponse::Data#carrier
        class Carrier < Telnyx::Internal::Type::BaseModel
          # @!attribute error_code
          #   Unused
          #
          #   @return [String, nil]
          optional :error_code, String, nil?: true

          # @!attribute mobile_country_code
          #   Region code that matches the specific country calling code if the requested
          #   phone number type is mobile
          #
          #   @return [String, nil]
          optional :mobile_country_code, String

          # @!attribute mobile_network_code
          #   National destination code (NDC), with a 0 prefix, if an NDC is found and the
          #   requested phone number type is mobile
          #
          #   @return [String, nil]
          optional :mobile_network_code, String

          # @!attribute name
          #   SPID (Service Provider ID) name, if the requested phone number has been ported;
          #   otherwise, the name of carrier who owns the phone number block
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute normalized_carrier
          #   If known to Telnyx and applicable, the primary network carrier.
          #
          #   @return [String, nil]
          optional :normalized_carrier, String

          # @!attribute type
          #   A phone number type that identifies the type of service associated with the
          #   requested phone number
          #
          #   @return [Symbol, Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type, nil]
          optional :type, enum: -> { Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type }

          # @!method initialize(error_code: nil, mobile_country_code: nil, mobile_network_code: nil, name: nil, normalized_carrier: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier} for more details.
          #
          #   @param error_code [String, nil] Unused
          #
          #   @param mobile_country_code [String] Region code that matches the specific country calling code if the requested phon
          #
          #   @param mobile_network_code [String] National destination code (NDC), with a 0 prefix, if an NDC is found and the req
          #
          #   @param name [String] SPID (Service Provider ID) name, if the requested phone number has been ported;
          #
          #   @param normalized_carrier [String] If known to Telnyx and applicable, the primary network carrier.
          #
          #   @param type [Symbol, Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type] A phone number type that identifies the type of service associated with the requ

          # A phone number type that identifies the type of service associated with the
          # requested phone number
          #
          # @see Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier#type
          module Type
            extend Telnyx::Internal::Type::Enum

            FIXED_LINE = :"fixed line"
            MOBILE = :mobile
            VOIP = :voip
            FIXED_LINE_OR_MOBILE = :"fixed line or mobile"
            TOLL_FREE = :"toll free"
            PREMIUM_RATE = :"premium rate"
            SHARED_COST = :"shared cost"
            PERSONAL_NUMBER = :"personal number"
            PAGER = :pager
            UAN = :uan
            VOICEMAIL = :voicemail
            UNKNOWN = :unknown

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::NumberLookupRetrieveResponse::Data#enhanced_caller_name
        class EnhancedCallerName < Telnyx::Internal::Type::BaseModel
          # @!attribute caller_name
          #   The name associated with the phone number.
          #
          #   @return [String, nil]
          optional :caller_name, String, nil?: true

          # @!attribute error_code
          #   A lookup-specific error code if the enhanced caller name could not be resolved;
          #   otherwise null.
          #
          #   @return [String, nil]
          optional :error_code, String, nil?: true

          # @!method initialize(caller_name: nil, error_code: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::NumberLookupRetrieveResponse::Data::EnhancedCallerName} for
          #   more details.
          #
          #   Enhanced caller name for the phone number's owner. Populated when
          #   `type=enhanced-caller-name` is requested.
          #
          #   @param caller_name [String, nil] The name associated with the phone number.
          #
          #   @param error_code [String, nil] A lookup-specific error code if the enhanced caller name could not be resolved;
        end

        # @see Telnyx::Models::NumberLookupRetrieveResponse::Data#nnid_override
        class NnidOverride < Telnyx::Internal::Type::BaseModel
          # @!attribute name
          #   Name associated with the NNID.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute nnid
          #   The network number ID.
          #
          #   @return [String, nil]
          optional :nnid, String

          # @!attribute type
          #   The NNID type.
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(name: nil, nnid: nil, type: nil)
          #   Network number ID (NNID) override for the phone number, when one applies
          #   (available only to accounts enabled for NNID); otherwise null.
          #
          #   @param name [String] Name associated with the NNID.
          #
          #   @param nnid [String] The network number ID.
          #
          #   @param type [String] The NNID type.
        end

        # @see Telnyx::Models::NumberLookupRetrieveResponse::Data#portability
        class Portability < Telnyx::Internal::Type::BaseModel
          # @!attribute altspid
          #   Alternative SPID (Service Provider ID). Often used when a carrier is using a
          #   number from another carrier
          #
          #   @return [String, nil]
          optional :altspid, String

          # @!attribute altspid_carrier_name
          #   Alternative service provider name
          #
          #   @return [String, nil]
          optional :altspid_carrier_name, String

          # @!attribute altspid_carrier_type
          #   Alternative service provider type
          #
          #   @return [String, nil]
          optional :altspid_carrier_type, String

          # @!attribute city
          #   City name extracted from the locality in the Local Exchange Routing Guide (LERG)
          #   database
          #
          #   @return [String, nil]
          optional :city, String

          # @!attribute line_type
          #   The line type of the phone number. Uses the same value set as carrier.type; see
          #   the API reference for the full list.
          #
          #   @return [Symbol, Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::LineType, nil]
          optional :line_type,
                   enum: -> { Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::LineType }

          # @!attribute lrn
          #   Local Routing Number, if assigned to the requested phone number
          #
          #   @return [String, nil]
          optional :lrn, String

          # @!attribute ocn
          #   Operating Company Name (OCN) as per the Local Exchange Routing Guide (LERG)
          #   database
          #
          #   @return [String, nil]
          optional :ocn, String

          # @!attribute ported_date
          #   ISO-formatted date when the requested phone number has been ported
          #
          #   @return [String, nil]
          optional :ported_date, String

          # @!attribute ported_status
          #   Indicates whether or not the requested phone number has been ported
          #
          #   @return [Symbol, Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus, nil]
          optional :ported_status,
                   enum: -> { Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus }

          # @!attribute spid
          #   SPID (Service Provider ID)
          #
          #   @return [String, nil]
          optional :spid, String

          # @!attribute spid_carrier_name
          #   Service provider name
          #
          #   @return [String, nil]
          optional :spid_carrier_name, String

          # @!attribute spid_carrier_type
          #   Service provider type
          #
          #   @return [String, nil]
          optional :spid_carrier_type, String

          # @!attribute state
          #
          #   @return [String, nil]
          optional :state, String

          # @!method initialize(altspid: nil, altspid_carrier_name: nil, altspid_carrier_type: nil, city: nil, line_type: nil, lrn: nil, ocn: nil, ported_date: nil, ported_status: nil, spid: nil, spid_carrier_name: nil, spid_carrier_type: nil, state: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability} for more
          #   details.
          #
          #   @param altspid [String] Alternative SPID (Service Provider ID). Often used when a carrier is using a num
          #
          #   @param altspid_carrier_name [String] Alternative service provider name
          #
          #   @param altspid_carrier_type [String] Alternative service provider type
          #
          #   @param city [String] City name extracted from the locality in the Local Exchange Routing Guide (LERG)
          #
          #   @param line_type [Symbol, Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::LineType] The line type of the phone number. Uses the same value set as carrier.type; see
          #
          #   @param lrn [String] Local Routing Number, if assigned to the requested phone number
          #
          #   @param ocn [String] Operating Company Name (OCN) as per the Local Exchange Routing Guide (LERG) data
          #
          #   @param ported_date [String] ISO-formatted date when the requested phone number has been ported
          #
          #   @param ported_status [Symbol, Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus] Indicates whether or not the requested phone number has been ported
          #
          #   @param spid [String] SPID (Service Provider ID)
          #
          #   @param spid_carrier_name [String] Service provider name
          #
          #   @param spid_carrier_type [String] Service provider type
          #
          #   @param state [String]

          # The line type of the phone number. Uses the same value set as carrier.type; see
          # the API reference for the full list.
          #
          # @see Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability#line_type
          module LineType
            extend Telnyx::Internal::Type::Enum

            FIXED_LINE = :"fixed line"
            MOBILE = :mobile
            VOIP = :voip
            FIXED_LINE_OR_MOBILE = :"fixed line or mobile"
            TOLL_FREE = :"toll free"
            PREMIUM_RATE = :"premium rate"
            SHARED_COST = :"shared cost"
            PERSONAL_NUMBER = :"personal number"
            PAGER = :pager
            UAN = :uan
            VOICEMAIL = :voicemail
            UNKNOWN = :unknown

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Indicates whether or not the requested phone number has been ported
          #
          # @see Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability#ported_status
          module PortedStatus
            extend Telnyx::Internal::Type::Enum

            Y = :Y
            N = :N
            EMPTY = :""

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
