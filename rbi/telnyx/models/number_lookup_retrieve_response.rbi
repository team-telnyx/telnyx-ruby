# typed: strong

module Telnyx
  module Models
    class NumberLookupRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NumberLookupRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::NumberLookupRetrieveResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::NumberLookupRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::NumberLookupRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::NumberLookupRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NumberLookupRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerName
            )
          )
        end
        attr_reader :caller_name

        sig do
          params(
            caller_name:
              Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerName::OrHash
          ).void
        end
        attr_writer :caller_name

        sig do
          returns(
            T.nilable(
              Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier
            )
          )
        end
        attr_reader :carrier

        sig do
          params(
            carrier:
              Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::OrHash
          ).void
        end
        attr_writer :carrier

        # Region code that matches the specific country calling code
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Unused
        sig { returns(T.nilable(String)) }
        attr_accessor :fraud

        # Hyphen-separated national number, preceded by the national destination code
        # (NDC), with a 0 prefix, if an NDC is found
        sig { returns(T.nilable(String)) }
        attr_reader :national_format

        sig { params(national_format: String).void }
        attr_writer :national_format

        # E164-formatted phone number
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig do
          returns(
            T.nilable(
              Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability
            )
          )
        end
        attr_reader :portability

        sig do
          params(
            portability:
              Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::OrHash
          ).void
        end
        attr_writer :portability

        # Identifies the type of record
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            caller_name:
              Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerName::OrHash,
            carrier:
              Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::OrHash,
            country_code: String,
            fraud: T.nilable(String),
            national_format: String,
            phone_number: String,
            portability:
              Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::OrHash,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          caller_name: nil,
          carrier: nil,
          # Region code that matches the specific country calling code
          country_code: nil,
          # Unused
          fraud: nil,
          # Hyphen-separated national number, preceded by the national destination code
          # (NDC), with a 0 prefix, if an NDC is found
          national_format: nil,
          # E164-formatted phone number
          phone_number: nil,
          portability: nil,
          # Identifies the type of record
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              caller_name:
                Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerName,
              carrier:
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier,
              country_code: String,
              fraud: T.nilable(String),
              national_format: String,
              phone_number: String,
              portability:
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability,
              record_type: String
            }
          )
        end
        def to_hash
        end

        class CallerName < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::NumberLookupRetrieveResponse::Data::CallerName,
                Telnyx::Internal::AnyHash
              )
            end

          # The name of the requested phone number's owner as per the CNAM database
          sig { returns(T.nilable(String)) }
          attr_reader :caller_name

          sig { params(caller_name: String).void }
          attr_writer :caller_name

          # A caller-name lookup specific error code, expressed as a stringified 5-digit
          # integer
          sig { returns(T.nilable(String)) }
          attr_reader :error_code

          sig { params(error_code: String).void }
          attr_writer :error_code

          sig do
            params(caller_name: String, error_code: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The name of the requested phone number's owner as per the CNAM database
            caller_name: nil,
            # A caller-name lookup specific error code, expressed as a stringified 5-digit
            # integer
            error_code: nil
          )
          end

          sig { override.returns({ caller_name: String, error_code: String }) }
          def to_hash
          end
        end

        class Carrier < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier,
                Telnyx::Internal::AnyHash
              )
            end

          # Unused
          sig { returns(T.nilable(String)) }
          attr_accessor :error_code

          # Region code that matches the specific country calling code if the requested
          # phone number type is mobile
          sig { returns(T.nilable(String)) }
          attr_reader :mobile_country_code

          sig { params(mobile_country_code: String).void }
          attr_writer :mobile_country_code

          # National destination code (NDC), with a 0 prefix, if an NDC is found and the
          # requested phone number type is mobile
          sig { returns(T.nilable(String)) }
          attr_reader :mobile_network_code

          sig { params(mobile_network_code: String).void }
          attr_writer :mobile_network_code

          # SPID (Service Provider ID) name, if the requested phone number has been ported;
          # otherwise, the name of carrier who owns the phone number block
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # If known to Telnyx and applicable, the primary network carrier.
          sig { returns(T.nilable(String)) }
          attr_reader :normalized_carrier

          sig { params(normalized_carrier: String).void }
          attr_writer :normalized_carrier

          # A phone number type that identifies the type of service associated with the
          # requested phone number
          sig do
            returns(
              T.nilable(
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              error_code: T.nilable(String),
              mobile_country_code: String,
              mobile_network_code: String,
              name: String,
              normalized_carrier: String,
              type:
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Unused
            error_code: nil,
            # Region code that matches the specific country calling code if the requested
            # phone number type is mobile
            mobile_country_code: nil,
            # National destination code (NDC), with a 0 prefix, if an NDC is found and the
            # requested phone number type is mobile
            mobile_network_code: nil,
            # SPID (Service Provider ID) name, if the requested phone number has been ported;
            # otherwise, the name of carrier who owns the phone number block
            name: nil,
            # If known to Telnyx and applicable, the primary network carrier.
            normalized_carrier: nil,
            # A phone number type that identifies the type of service associated with the
            # requested phone number
            type: nil
          )
          end

          sig do
            override.returns(
              {
                error_code: T.nilable(String),
                mobile_country_code: String,
                mobile_network_code: String,
                name: String,
                normalized_carrier: String,
                type:
                  Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # A phone number type that identifies the type of service associated with the
          # requested phone number
          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FIXED_LINE =
              T.let(
                :"fixed line",
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            MOBILE =
              T.let(
                :mobile,
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            VOIP =
              T.let(
                :voip,
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            FIXED_LINE_OR_MOBILE =
              T.let(
                :"fixed line or mobile",
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            TOLL_FREE =
              T.let(
                :"toll free",
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            PREMIUM_RATE =
              T.let(
                :"premium rate",
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            SHARED_COST =
              T.let(
                :"shared cost",
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            PERSONAL_NUMBER =
              T.let(
                :"personal number",
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            PAGER =
              T.let(
                :pager,
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            UAN =
              T.let(
                :uan,
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            VOICEMAIL =
              T.let(
                :voicemail,
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :unknown,
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::NumberLookupRetrieveResponse::Data::Carrier::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Portability < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability,
                Telnyx::Internal::AnyHash
              )
            end

          # Alternative SPID (Service Provider ID). Often used when a carrier is using a
          # number from another carrier
          sig { returns(T.nilable(String)) }
          attr_reader :altspid

          sig { params(altspid: String).void }
          attr_writer :altspid

          # Alternative service provider name
          sig { returns(T.nilable(String)) }
          attr_reader :altspid_carrier_name

          sig { params(altspid_carrier_name: String).void }
          attr_writer :altspid_carrier_name

          # Alternative service provider type
          sig { returns(T.nilable(String)) }
          attr_reader :altspid_carrier_type

          sig { params(altspid_carrier_type: String).void }
          attr_writer :altspid_carrier_type

          # City name extracted from the locality in the Local Exchange Routing Guide (LERG)
          # database
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          # Type of number
          sig { returns(T.nilable(String)) }
          attr_reader :line_type

          sig { params(line_type: String).void }
          attr_writer :line_type

          # Local Routing Number, if assigned to the requested phone number
          sig { returns(T.nilable(String)) }
          attr_reader :lrn

          sig { params(lrn: String).void }
          attr_writer :lrn

          # Operating Company Name (OCN) as per the Local Exchange Routing Guide (LERG)
          # database
          sig { returns(T.nilable(String)) }
          attr_reader :ocn

          sig { params(ocn: String).void }
          attr_writer :ocn

          # ISO-formatted date when the requested phone number has been ported
          sig { returns(T.nilable(String)) }
          attr_reader :ported_date

          sig { params(ported_date: String).void }
          attr_writer :ported_date

          # Indicates whether or not the requested phone number has been ported
          sig do
            returns(
              T.nilable(
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus::TaggedSymbol
              )
            )
          end
          attr_reader :ported_status

          sig do
            params(
              ported_status:
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus::OrSymbol
            ).void
          end
          attr_writer :ported_status

          # SPID (Service Provider ID)
          sig { returns(T.nilable(String)) }
          attr_reader :spid

          sig { params(spid: String).void }
          attr_writer :spid

          # Service provider name
          sig { returns(T.nilable(String)) }
          attr_reader :spid_carrier_name

          sig { params(spid_carrier_name: String).void }
          attr_writer :spid_carrier_name

          # Service provider type
          sig { returns(T.nilable(String)) }
          attr_reader :spid_carrier_type

          sig { params(spid_carrier_type: String).void }
          attr_writer :spid_carrier_type

          sig { returns(T.nilable(String)) }
          attr_reader :state

          sig { params(state: String).void }
          attr_writer :state

          sig do
            params(
              altspid: String,
              altspid_carrier_name: String,
              altspid_carrier_type: String,
              city: String,
              line_type: String,
              lrn: String,
              ocn: String,
              ported_date: String,
              ported_status:
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus::OrSymbol,
              spid: String,
              spid_carrier_name: String,
              spid_carrier_type: String,
              state: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Alternative SPID (Service Provider ID). Often used when a carrier is using a
            # number from another carrier
            altspid: nil,
            # Alternative service provider name
            altspid_carrier_name: nil,
            # Alternative service provider type
            altspid_carrier_type: nil,
            # City name extracted from the locality in the Local Exchange Routing Guide (LERG)
            # database
            city: nil,
            # Type of number
            line_type: nil,
            # Local Routing Number, if assigned to the requested phone number
            lrn: nil,
            # Operating Company Name (OCN) as per the Local Exchange Routing Guide (LERG)
            # database
            ocn: nil,
            # ISO-formatted date when the requested phone number has been ported
            ported_date: nil,
            # Indicates whether or not the requested phone number has been ported
            ported_status: nil,
            # SPID (Service Provider ID)
            spid: nil,
            # Service provider name
            spid_carrier_name: nil,
            # Service provider type
            spid_carrier_type: nil,
            state: nil
          )
          end

          sig do
            override.returns(
              {
                altspid: String,
                altspid_carrier_name: String,
                altspid_carrier_type: String,
                city: String,
                line_type: String,
                lrn: String,
                ocn: String,
                ported_date: String,
                ported_status:
                  Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus::TaggedSymbol,
                spid: String,
                spid_carrier_name: String,
                spid_carrier_type: String,
                state: String
              }
            )
          end
          def to_hash
          end

          # Indicates whether or not the requested phone number has been ported
          module PortedStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            Y =
              T.let(
                :Y,
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus::TaggedSymbol
              )
            N =
              T.let(
                :N,
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus::TaggedSymbol
              )
            EMPTY =
              T.let(
                :"",
                Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::NumberLookupRetrieveResponse::Data::Portability::PortedStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
