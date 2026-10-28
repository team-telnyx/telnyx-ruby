# typed: strong

module Telnyx
  module Models
    module Email
      class DedicatedIPCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Email::DedicatedIPCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :idempotency_key

        # Allocate an IP of this address family. Supported value: `ipv4`. Any other value,
        # including `ipv6` or `null`, returns `422`.
        sig do
          returns(
            T.nilable(
              Telnyx::Email::DedicatedIPCreateParams::IPVersion::OrSymbol
            )
          )
        end
        attr_reader :ip_version

        sig do
          params(
            ip_version:
              Telnyx::Email::DedicatedIPCreateParams::IPVersion::OrSymbol
          ).void
        end
        attr_writer :ip_version

        # Allocate an IP in this region. Supported value: `ewr-nj1`. Any other value,
        # including an empty string or `null`, returns `422`.
        sig do
          returns(
            T.nilable(Telnyx::Email::DedicatedIPCreateParams::Region::OrSymbol)
          )
        end
        attr_reader :region

        sig do
          params(
            region: Telnyx::Email::DedicatedIPCreateParams::Region::OrSymbol
          ).void
        end
        attr_writer :region

        sig do
          params(
            idempotency_key: String,
            ip_version:
              Telnyx::Email::DedicatedIPCreateParams::IPVersion::OrSymbol,
            region: Telnyx::Email::DedicatedIPCreateParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          idempotency_key:,
          # Allocate an IP of this address family. Supported value: `ipv4`. Any other value,
          # including `ipv6` or `null`, returns `422`.
          ip_version: nil,
          # Allocate an IP in this region. Supported value: `ewr-nj1`. Any other value,
          # including an empty string or `null`, returns `422`.
          region: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              idempotency_key: String,
              ip_version:
                Telnyx::Email::DedicatedIPCreateParams::IPVersion::OrSymbol,
              region: Telnyx::Email::DedicatedIPCreateParams::Region::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Allocate an IP of this address family. Supported value: `ipv4`. Any other value,
        # including `ipv6` or `null`, returns `422`.
        module IPVersion
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Email::DedicatedIPCreateParams::IPVersion)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IPV4 =
            T.let(
              :ipv4,
              Telnyx::Email::DedicatedIPCreateParams::IPVersion::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Email::DedicatedIPCreateParams::IPVersion::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Allocate an IP in this region. Supported value: `ewr-nj1`. Any other value,
        # including an empty string or `null`, returns `422`.
        module Region
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Email::DedicatedIPCreateParams::Region)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EWR_NJ1 =
            T.let(
              :"ewr-nj1",
              Telnyx::Email::DedicatedIPCreateParams::Region::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Email::DedicatedIPCreateParams::Region::TaggedSymbol
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
