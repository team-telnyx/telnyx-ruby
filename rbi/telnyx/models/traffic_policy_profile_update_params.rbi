# typed: strong

module Telnyx
  module Models
    class TrafficPolicyProfileUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TrafficPolicyProfileUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Array of domain names.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :domains

      sig { params(domains: T::Array[String]).void }
      attr_writer :domains

      # Array of IP ranges in CIDR notation.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ip_ranges

      sig { params(ip_ranges: T::Array[String]).void }
      attr_writer :ip_ranges

      # Bandwidth limit in kbps. Must be 512 or 1024, or null to remove.
      sig do
        returns(
          T.nilable(
            Telnyx::TrafficPolicyProfileUpdateParams::LimitBwKbps::OrInteger
          )
        )
      end
      attr_accessor :limit_bw_kbps

      # Array of PCEF service IDs to include in the profile.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :services

      sig { params(services: T::Array[String]).void }
      attr_writer :services

      # The type of the traffic policy profile.
      sig do
        returns(
          T.nilable(Telnyx::TrafficPolicyProfileUpdateParams::Type::OrSymbol)
        )
      end
      attr_reader :type

      sig do
        params(
          type: Telnyx::TrafficPolicyProfileUpdateParams::Type::OrSymbol
        ).void
      end
      attr_writer :type

      sig do
        params(
          id: String,
          domains: T::Array[String],
          ip_ranges: T::Array[String],
          limit_bw_kbps:
            T.nilable(
              Telnyx::TrafficPolicyProfileUpdateParams::LimitBwKbps::OrInteger
            ),
          services: T::Array[String],
          type: Telnyx::TrafficPolicyProfileUpdateParams::Type::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Array of domain names.
        domains: nil,
        # Array of IP ranges in CIDR notation.
        ip_ranges: nil,
        # Bandwidth limit in kbps. Must be 512 or 1024, or null to remove.
        limit_bw_kbps: nil,
        # Array of PCEF service IDs to include in the profile.
        services: nil,
        # The type of the traffic policy profile.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            domains: T::Array[String],
            ip_ranges: T::Array[String],
            limit_bw_kbps:
              T.nilable(
                Telnyx::TrafficPolicyProfileUpdateParams::LimitBwKbps::OrInteger
              ),
            services: T::Array[String],
            type: Telnyx::TrafficPolicyProfileUpdateParams::Type::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Bandwidth limit in kbps. Must be 512 or 1024, or null to remove.
      module LimitBwKbps
        extend Telnyx::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(
              Integer,
              Telnyx::TrafficPolicyProfileUpdateParams::LimitBwKbps
            )
          end
        OrInteger = T.type_alias { Integer }

        LIMIT_BW_KBPS_512 =
          T.let(
            512,
            Telnyx::TrafficPolicyProfileUpdateParams::LimitBwKbps::TaggedInteger
          )
        LIMIT_BW_KBPS_1024 =
          T.let(
            1024,
            Telnyx::TrafficPolicyProfileUpdateParams::LimitBwKbps::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TrafficPolicyProfileUpdateParams::LimitBwKbps::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end

      # The type of the traffic policy profile.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TrafficPolicyProfileUpdateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WHITELIST =
          T.let(
            :whitelist,
            Telnyx::TrafficPolicyProfileUpdateParams::Type::TaggedSymbol
          )
        BLACKLIST =
          T.let(
            :blacklist,
            Telnyx::TrafficPolicyProfileUpdateParams::Type::TaggedSymbol
          )
        THROTTLING =
          T.let(
            :throttling,
            Telnyx::TrafficPolicyProfileUpdateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TrafficPolicyProfileUpdateParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
