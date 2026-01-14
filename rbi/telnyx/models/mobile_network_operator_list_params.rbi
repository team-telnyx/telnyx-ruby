# typed: strong

module Telnyx
  module Models
    class MobileNetworkOperatorListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MobileNetworkOperatorListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter for mobile network operators (deepObject style).
      # Originally: filter[name][starts_with], filter[name][contains],
      # filter[name][ends_with], filter[country_code], filter[mcc], filter[mnc],
      # filter[tadig], filter[network_preferences_enabled]
      sig do
        returns(T.nilable(Telnyx::MobileNetworkOperatorListParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::MobileNetworkOperatorListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter: Telnyx::MobileNetworkOperatorListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter for mobile network operators (deepObject style).
        # Originally: filter[name][starts_with], filter[name][contains],
        # filter[name][ends_with], filter[country_code], filter[mcc], filter[mnc],
        # filter[tadig], filter[network_preferences_enabled]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::MobileNetworkOperatorListParams::Filter,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MobileNetworkOperatorListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by exact country_code.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Filter by exact MCC.
        sig { returns(T.nilable(String)) }
        attr_reader :mcc

        sig { params(mcc: String).void }
        attr_writer :mcc

        # Filter by exact MNC.
        sig { returns(T.nilable(String)) }
        attr_reader :mnc

        sig { params(mnc: String).void }
        attr_writer :mnc

        # Advanced name filtering operations
        sig do
          returns(
            T.nilable(Telnyx::MobileNetworkOperatorListParams::Filter::Name)
          )
        end
        attr_reader :name

        sig do
          params(
            name: Telnyx::MobileNetworkOperatorListParams::Filter::Name::OrHash
          ).void
        end
        attr_writer :name

        # Filter by network_preferences_enabled.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :network_preferences_enabled

        sig { params(network_preferences_enabled: T::Boolean).void }
        attr_writer :network_preferences_enabled

        # Filter by exact TADIG.
        sig { returns(T.nilable(String)) }
        attr_reader :tadig

        sig { params(tadig: String).void }
        attr_writer :tadig

        # Consolidated filter parameter for mobile network operators (deepObject style).
        # Originally: filter[name][starts_with], filter[name][contains],
        # filter[name][ends_with], filter[country_code], filter[mcc], filter[mnc],
        # filter[tadig], filter[network_preferences_enabled]
        sig do
          params(
            country_code: String,
            mcc: String,
            mnc: String,
            name: Telnyx::MobileNetworkOperatorListParams::Filter::Name::OrHash,
            network_preferences_enabled: T::Boolean,
            tadig: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by exact country_code.
          country_code: nil,
          # Filter by exact MCC.
          mcc: nil,
          # Filter by exact MNC.
          mnc: nil,
          # Advanced name filtering operations
          name: nil,
          # Filter by network_preferences_enabled.
          network_preferences_enabled: nil,
          # Filter by exact TADIG.
          tadig: nil
        )
        end

        sig do
          override.returns(
            {
              country_code: String,
              mcc: String,
              mnc: String,
              name: Telnyx::MobileNetworkOperatorListParams::Filter::Name,
              network_preferences_enabled: T::Boolean,
              tadig: String
            }
          )
        end
        def to_hash
        end

        class Name < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MobileNetworkOperatorListParams::Filter::Name,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by name containing match.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # Filter by name ending with.
          sig { returns(T.nilable(String)) }
          attr_reader :ends_with

          sig { params(ends_with: String).void }
          attr_writer :ends_with

          # Filter by name starting with.
          sig { returns(T.nilable(String)) }
          attr_reader :starts_with

          sig { params(starts_with: String).void }
          attr_writer :starts_with

          # Advanced name filtering operations
          sig do
            params(
              contains: String,
              ends_with: String,
              starts_with: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by name containing match.
            contains: nil,
            # Filter by name ending with.
            ends_with: nil,
            # Filter by name starting with.
            starts_with: nil
          )
          end

          sig do
            override.returns(
              { contains: String, ends_with: String, starts_with: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
