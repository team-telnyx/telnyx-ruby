# typed: strong

module Telnyx
  module Models
    module Rcs
      class BrandResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::BrandResponse, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Hash[Symbol, Telnyx::Rcs::BrandAddress]) }
        attr_accessor :addresses

        sig { returns(String) }
        attr_accessor :brand_id

        sig { returns(Telnyx::Rcs::CapabilitiesResponse) }
        attr_reader :capabilities

        sig do
          params(capabilities: Telnyx::Rcs::CapabilitiesResponse::OrHash).void
        end
        attr_writer :capabilities

        sig { returns(T::Hash[Symbol, Telnyx::Rcs::BrandContact]) }
        attr_accessor :contacts

        sig { returns(String) }
        attr_accessor :display_name

        sig do
          returns(
            T::Hash[Symbol, Telnyx::Rcs::BrandResponse::Identifier::Variants]
          )
        end
        attr_accessor :identifiers

        sig { returns(String) }
        attr_accessor :legal_entity_type

        sig { returns(String) }
        attr_accessor :legal_name

        sig { returns(String) }
        attr_accessor :organization_type

        sig { returns(T.nilable(String)) }
        attr_accessor :profile_id

        sig { returns(Telnyx::Rcs::BrandResponse::Status::TaggedSymbol) }
        attr_accessor :status

        sig { returns(String) }
        attr_accessor :website_url

        sig do
          params(
            addresses: T::Hash[Symbol, Telnyx::Rcs::BrandAddress::OrHash],
            brand_id: String,
            capabilities: Telnyx::Rcs::CapabilitiesResponse::OrHash,
            contacts: T::Hash[Symbol, Telnyx::Rcs::BrandContact::OrHash],
            display_name: String,
            identifiers:
              T::Hash[
                Symbol,
                T.any(
                  Telnyx::Rcs::EinBrandIdentifier::OrHash,
                  Telnyx::Rcs::StockSymbolBrandIdentifier::OrHash
                )
              ],
            legal_entity_type: String,
            legal_name: String,
            organization_type: String,
            profile_id: T.nilable(String),
            status: Telnyx::Rcs::BrandResponse::Status::OrSymbol,
            website_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          addresses:,
          brand_id:,
          capabilities:,
          contacts:,
          display_name:,
          identifiers:,
          legal_entity_type:,
          legal_name:,
          organization_type:,
          profile_id:,
          status:,
          website_url:
        )
        end

        sig do
          override.returns(
            {
              addresses: T::Hash[Symbol, Telnyx::Rcs::BrandAddress],
              brand_id: String,
              capabilities: Telnyx::Rcs::CapabilitiesResponse,
              contacts: T::Hash[Symbol, Telnyx::Rcs::BrandContact],
              display_name: String,
              identifiers:
                T::Hash[
                  Symbol,
                  Telnyx::Rcs::BrandResponse::Identifier::Variants
                ],
              legal_entity_type: String,
              legal_name: String,
              organization_type: String,
              profile_id: T.nilable(String),
              status: Telnyx::Rcs::BrandResponse::Status::TaggedSymbol,
              website_url: String
            }
          )
        end
        def to_hash
        end

        module Identifier
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Rcs::EinBrandIdentifier,
                Telnyx::Rcs::StockSymbolBrandIdentifier
              )
            end

          sig do
            override.returns(
              T::Array[Telnyx::Rcs::BrandResponse::Identifier::Variants]
            )
          end
          def self.variants
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Rcs::BrandResponse::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(:CREATED, Telnyx::Rcs::BrandResponse::Status::TaggedSymbol)
          CONFIGURED =
            T.let(:CONFIGURED, Telnyx::Rcs::BrandResponse::Status::TaggedSymbol)
          SUBMITTED =
            T.let(:SUBMITTED, Telnyx::Rcs::BrandResponse::Status::TaggedSymbol)
          REVIEWING =
            T.let(:REVIEWING, Telnyx::Rcs::BrandResponse::Status::TaggedSymbol)
          VETTING =
            T.let(:VETTING, Telnyx::Rcs::BrandResponse::Status::TaggedSymbol)
          VERIFIED =
            T.let(:VERIFIED, Telnyx::Rcs::BrandResponse::Status::TaggedSymbol)
          REJECTED =
            T.let(:REJECTED, Telnyx::Rcs::BrandResponse::Status::TaggedSymbol)
          FAILED =
            T.let(:FAILED, Telnyx::Rcs::BrandResponse::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Rcs::BrandResponse::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
