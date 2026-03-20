# typed: strong

module Telnyx
  module Models
    class TrafficPolicyProfileCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TrafficPolicyProfileCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::TrafficPolicyProfileCreateResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::TrafficPolicyProfileCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TrafficPolicyProfileCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

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

        # Bandwidth limit in kbps.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit_bw_kbps

        # Array of PCEF service IDs included in the profile.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :services

        sig { params(services: T::Array[String]).void }
        attr_writer :services

        # The type of the traffic policy profile.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date-time indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            created_at: String,
            domains: T::Array[String],
            ip_ranges: T::Array[String],
            limit_bw_kbps: T.nilable(Integer),
            record_type: String,
            services: T::Array[String],
            type:
              Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::Type::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          # Array of domain names.
          domains: nil,
          # Array of IP ranges in CIDR notation.
          ip_ranges: nil,
          # Bandwidth limit in kbps.
          limit_bw_kbps: nil,
          record_type: nil,
          # Array of PCEF service IDs included in the profile.
          services: nil,
          # The type of the traffic policy profile.
          type: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              domains: T::Array[String],
              ip_ranges: T::Array[String],
              limit_bw_kbps: T.nilable(Integer),
              record_type: String,
              services: T::Array[String],
              type:
                Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::Type::TaggedSymbol,
              updated_at: String
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
              T.all(
                Symbol,
                Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHITELIST =
            T.let(
              :whitelist,
              Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::Type::TaggedSymbol
            )
          BLACKLIST =
            T.let(
              :blacklist,
              Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::Type::TaggedSymbol
            )
          THROTTLING =
            T.let(
              :throttling,
              Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::TrafficPolicyProfileCreateResponse::Data::Type::TaggedSymbol
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
