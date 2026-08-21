# typed: strong

module Telnyx
  module Models
    module Rcs
      class BrandCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::BrandCreateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Hash[Symbol, Telnyx::Rcs::BrandAddress]) }
        attr_accessor :addresses

        # Named business contacts. Use the `brand` key for the required BRAND contact.
        sig { returns(Telnyx::Rcs::BrandCreateParams::Contacts) }
        attr_reader :contacts

        sig do
          params(
            contacts: Telnyx::Rcs::BrandCreateParams::Contacts::OrHash
          ).void
        end
        attr_writer :contacts

        sig { returns(String) }
        attr_accessor :display_name

        # Named business identifiers. Use the `ein` key for the required EIN and
        # `stock_symbol` for a public-profit brand's stock symbol.
        sig { returns(Telnyx::Rcs::BrandCreateParams::Identifiers) }
        attr_reader :identifiers

        sig do
          params(
            identifiers: Telnyx::Rcs::BrandCreateParams::Identifiers::OrHash
          ).void
        end
        attr_writer :identifiers

        sig { returns(Telnyx::Rcs::BrandLegalEntityType::OrSymbol) }
        attr_accessor :legal_entity_type

        sig { returns(String) }
        attr_accessor :legal_name

        sig { returns(Telnyx::Rcs::BrandOrganizationType::OrSymbol) }
        attr_accessor :organization_type

        sig { returns(String) }
        attr_accessor :website_url

        # A Messaging Profile owned by the authenticated organization. Agents inherit this
        # value when they do not provide their own profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :profile_id

        sig do
          params(
            addresses: T::Hash[Symbol, Telnyx::Rcs::BrandAddress::OrHash],
            contacts: Telnyx::Rcs::BrandCreateParams::Contacts::OrHash,
            display_name: String,
            identifiers: Telnyx::Rcs::BrandCreateParams::Identifiers::OrHash,
            legal_entity_type: Telnyx::Rcs::BrandLegalEntityType::OrSymbol,
            legal_name: String,
            organization_type: Telnyx::Rcs::BrandOrganizationType::OrSymbol,
            website_url: String,
            profile_id: T.nilable(String),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          addresses:,
          # Named business contacts. Use the `brand` key for the required BRAND contact.
          contacts:,
          display_name:,
          # Named business identifiers. Use the `ein` key for the required EIN and
          # `stock_symbol` for a public-profit brand's stock symbol.
          identifiers:,
          legal_entity_type:,
          legal_name:,
          organization_type:,
          website_url:,
          # A Messaging Profile owned by the authenticated organization. Agents inherit this
          # value when they do not provide their own profile.
          profile_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              addresses: T::Hash[Symbol, Telnyx::Rcs::BrandAddress],
              contacts: Telnyx::Rcs::BrandCreateParams::Contacts,
              display_name: String,
              identifiers: Telnyx::Rcs::BrandCreateParams::Identifiers,
              legal_entity_type: Telnyx::Rcs::BrandLegalEntityType::OrSymbol,
              legal_name: String,
              organization_type: Telnyx::Rcs::BrandOrganizationType::OrSymbol,
              website_url: String,
              profile_id: T.nilable(String),
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Contacts < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Rcs::BrandCreateParams::Contacts,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::Rcs::BrandCreateParams::Contacts::Brand) }
          attr_reader :brand

          sig do
            params(
              brand: Telnyx::Rcs::BrandCreateParams::Contacts::Brand::OrHash
            ).void
          end
          attr_writer :brand

          # Named business contacts. Use the `brand` key for the required BRAND contact.
          sig do
            params(
              brand: Telnyx::Rcs::BrandCreateParams::Contacts::Brand::OrHash
            ).returns(T.attached_class)
          end
          def self.new(brand:)
          end

          sig do
            override.returns(
              { brand: Telnyx::Rcs::BrandCreateParams::Contacts::Brand }
            )
          end
          def to_hash
          end

          class Brand < Telnyx::Models::Rcs::BrandContact
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rcs::BrandCreateParams::Contacts::Brand,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.attached_class) }
            def self.new
            end

            sig { override.returns({}) }
            def to_hash
            end
          end
        end

        class Identifiers < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Rcs::BrandCreateParams::Identifiers,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::Rcs::EinBrandIdentifier) }
          attr_reader :ein

          sig { params(ein: Telnyx::Rcs::EinBrandIdentifier::OrHash).void }
          attr_writer :ein

          sig { returns(T.nilable(Telnyx::Rcs::StockSymbolBrandIdentifier)) }
          attr_reader :stock_symbol

          sig do
            params(
              stock_symbol: Telnyx::Rcs::StockSymbolBrandIdentifier::OrHash
            ).void
          end
          attr_writer :stock_symbol

          # Named business identifiers. Use the `ein` key for the required EIN and
          # `stock_symbol` for a public-profit brand's stock symbol.
          sig do
            params(
              ein: Telnyx::Rcs::EinBrandIdentifier::OrHash,
              stock_symbol: Telnyx::Rcs::StockSymbolBrandIdentifier::OrHash
            ).returns(T.attached_class)
          end
          def self.new(ein:, stock_symbol: nil)
          end

          sig do
            override.returns(
              {
                ein: Telnyx::Rcs::EinBrandIdentifier,
                stock_symbol: Telnyx::Rcs::StockSymbolBrandIdentifier
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
