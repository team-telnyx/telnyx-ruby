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

        # @!method initialize(caller_name: nil, carrier: nil, country_code: nil, fraud: nil, national_format: nil, phone_number: nil, portability: nil, record_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::NumberLookupRetrieveResponse::Data} for more details.
        #
        #   @param caller_name [Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerName]
        #
        #   @param carrier [Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier]
        #
        #   @param country_code [String] Region code that matches the specific country calling code
        #
        #   @param fraud [String, nil] Unused
        #
        #   @param national_format [String] Hyphen-separated national number, preceded by the national destination code (NDC
        #
        #   @param phone_number [String] E164-formatted phone number
        #
        #   @param portability [Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability]
        #
        #   @param record_type [String] Identifies the type of record

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
          #   Type of number
          #
          #   @return [String, nil]
          optional :line_type, String

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
          #   @param line_type [String] Type of number
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
