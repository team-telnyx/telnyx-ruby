# typed: strong

module Telnyx
  module Models
    class TrafficPolicyProfileCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TrafficPolicyProfileCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The type of the traffic policy profile.
      sig { returns(Telnyx::TrafficPolicyProfileCreateParams::Type::OrSymbol) }
      attr_accessor :type

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

      # Bandwidth limit in kbps. Must be 512 or 1024.
      sig do
        returns(
          T.nilable(
            Telnyx::TrafficPolicyProfileCreateParams::LimitBwKbps::OrInteger
          )
        )
      end
      attr_reader :limit_bw_kbps

      sig do
        params(
          limit_bw_kbps:
            Telnyx::TrafficPolicyProfileCreateParams::LimitBwKbps::OrInteger
        ).void
      end
      attr_writer :limit_bw_kbps

      # Array of PCEF service IDs to include in the profile.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :services

      sig { params(services: T::Array[String]).void }
      attr_writer :services

      sig do
        params(
          type: Telnyx::TrafficPolicyProfileCreateParams::Type::OrSymbol,
          domains: T::Array[String],
          ip_ranges: T::Array[String],
          limit_bw_kbps:
            Telnyx::TrafficPolicyProfileCreateParams::LimitBwKbps::OrInteger,
          services: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The type of the traffic policy profile.
        type:,
        # Array of domain names.
        domains: nil,
        # Array of IP ranges in CIDR notation.
        ip_ranges: nil,
        # Bandwidth limit in kbps. Must be 512 or 1024.
        limit_bw_kbps: nil,
        # Array of PCEF service IDs to include in the profile.
        services: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type: Telnyx::TrafficPolicyProfileCreateParams::Type::OrSymbol,
            domains: T::Array[String],
            ip_ranges: T::Array[String],
            limit_bw_kbps:
              Telnyx::TrafficPolicyProfileCreateParams::LimitBwKbps::OrInteger,
            services: T::Array[String],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of the traffic policy profile.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TrafficPolicyProfileCreateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WHITELIST =
          T.let(
            :whitelist,
            Telnyx::TrafficPolicyProfileCreateParams::Type::TaggedSymbol
          )
        BLACKLIST =
          T.let(
            :blacklist,
            Telnyx::TrafficPolicyProfileCreateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TrafficPolicyProfileCreateParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Bandwidth limit in kbps. Must be 512 or 1024.
      module LimitBwKbps
        extend Telnyx::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(
              Integer,
              Telnyx::TrafficPolicyProfileCreateParams::LimitBwKbps
            )
          end
        OrInteger = T.type_alias { Integer }

        LIMIT_BW_KBPS_512 =
          T.let(
            512,
            Telnyx::TrafficPolicyProfileCreateParams::LimitBwKbps::TaggedInteger
          )
        LIMIT_BW_KBPS_1024 =
          T.let(
            1024,
            Telnyx::TrafficPolicyProfileCreateParams::LimitBwKbps::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TrafficPolicyProfileCreateParams::LimitBwKbps::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
