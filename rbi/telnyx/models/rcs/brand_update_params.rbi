# typed: strong

module Telnyx
  module Models
    module Rcs
      class BrandUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::BrandUpdateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(T::Hash[Symbol, Telnyx::Rcs::BrandAddress])) }
        attr_reader :addresses

        sig do
          params(
            addresses: T::Hash[Symbol, Telnyx::Rcs::BrandAddress::OrHash]
          ).void
        end
        attr_writer :addresses

        # Named business contacts. Use the `brand` key for the required BRAND contact.
        sig { returns(T.nilable(Telnyx::Rcs::BrandUpdateParams::Contacts)) }
        attr_reader :contacts

        sig do
          params(
            contacts: Telnyx::Rcs::BrandUpdateParams::Contacts::OrHash
          ).void
        end
        attr_writer :contacts

        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        # Named business identifiers. Use the `ein` key for the required EIN and
        # `stock_symbol` for a public-profit brand's stock symbol.
        sig { returns(T.nilable(Telnyx::Rcs::BrandUpdateParams::Identifiers)) }
        attr_reader :identifiers

        sig do
          params(
            identifiers: Telnyx::Rcs::BrandUpdateParams::Identifiers::OrHash
          ).void
        end
        attr_writer :identifiers

        sig { returns(T.nilable(Telnyx::Rcs::BrandLegalEntityType::OrSymbol)) }
        attr_reader :legal_entity_type

        sig do
          params(
            legal_entity_type: Telnyx::Rcs::BrandLegalEntityType::OrSymbol
          ).void
        end
        attr_writer :legal_entity_type

        sig { returns(T.nilable(String)) }
        attr_reader :legal_name

        sig { params(legal_name: String).void }
        attr_writer :legal_name

        sig { returns(T.nilable(Telnyx::Rcs::BrandOrganizationType::OrSymbol)) }
        attr_reader :organization_type

        sig do
          params(
            organization_type: Telnyx::Rcs::BrandOrganizationType::OrSymbol
          ).void
        end
        attr_writer :organization_type

        sig { returns(T.nilable(String)) }
        attr_reader :profile_id

        sig { params(profile_id: String).void }
        attr_writer :profile_id

        sig { returns(T.nilable(String)) }
        attr_reader :website_url

        sig { params(website_url: String).void }
        attr_writer :website_url

        sig do
          params(
            id: String,
            addresses: T::Hash[Symbol, Telnyx::Rcs::BrandAddress::OrHash],
            contacts: Telnyx::Rcs::BrandUpdateParams::Contacts::OrHash,
            display_name: String,
            identifiers: Telnyx::Rcs::BrandUpdateParams::Identifiers::OrHash,
            legal_entity_type: Telnyx::Rcs::BrandLegalEntityType::OrSymbol,
            legal_name: String,
            organization_type: Telnyx::Rcs::BrandOrganizationType::OrSymbol,
            profile_id: String,
            website_url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          addresses: nil,
          # Named business contacts. Use the `brand` key for the required BRAND contact.
          contacts: nil,
          display_name: nil,
          # Named business identifiers. Use the `ein` key for the required EIN and
          # `stock_symbol` for a public-profit brand's stock symbol.
          identifiers: nil,
          legal_entity_type: nil,
          legal_name: nil,
          organization_type: nil,
          profile_id: nil,
          website_url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              addresses: T::Hash[Symbol, Telnyx::Rcs::BrandAddress],
              contacts: Telnyx::Rcs::BrandUpdateParams::Contacts,
              display_name: String,
              identifiers: Telnyx::Rcs::BrandUpdateParams::Identifiers,
              legal_entity_type: Telnyx::Rcs::BrandLegalEntityType::OrSymbol,
              legal_name: String,
              organization_type: Telnyx::Rcs::BrandOrganizationType::OrSymbol,
              profile_id: String,
              website_url: String,
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
                Telnyx::Rcs::BrandUpdateParams::Contacts,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::Rcs::BrandUpdateParams::Contacts::Brand) }
          attr_reader :brand

          sig do
            params(
              brand: Telnyx::Rcs::BrandUpdateParams::Contacts::Brand::OrHash
            ).void
          end
          attr_writer :brand

          # Named business contacts. Use the `brand` key for the required BRAND contact.
          sig do
            params(
              brand: Telnyx::Rcs::BrandUpdateParams::Contacts::Brand::OrHash
            ).returns(T.attached_class)
          end
          def self.new(brand:)
          end

          sig do
            override.returns(
              { brand: Telnyx::Rcs::BrandUpdateParams::Contacts::Brand }
            )
          end
          def to_hash
          end

          class Brand < Telnyx::Models::Rcs::BrandContact
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rcs::BrandUpdateParams::Contacts::Brand,
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
                Telnyx::Rcs::BrandUpdateParams::Identifiers,
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
