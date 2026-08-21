# typed: strong

module Telnyx
  module Resources
    class Rcs
      # Manage the legal business entities that operate RCS agents.
      class Brands
        # Creates an editable RCS brand draft. Creating the draft does not begin external
        # review.
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
          ).returns(Telnyx::Rcs::BrandResponse)
        end
        def create(
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

        # Retrieves an RCS brand and its current lifecycle status.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Rcs::BrandResponse)
        end
        def retrieve(
          # The Telnyx-assigned brand identifier.
          id,
          request_options: {}
        )
        end

        # Updates one or more fields on a brand while its status is `CREATED`. Submitted
        # brands cannot be changed.
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
          ).returns(Telnyx::Rcs::BrandResponse)
        end
        def update(
          # The Telnyx-assigned brand identifier.
          id,
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

        # Lists RCS brands owned by the authenticated organization.
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            T::Array[Telnyx::Rcs::BrandResponse]
          )
        end
        def list(request_options: {})
        end

        # Starts asynchronous provider provisioning and external review for a brand.
        # Repeating this request for an in-progress brand returns its current state
        # without creating new work.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Rcs::BrandResponse)
        end
        def submit(
          # The Telnyx-assigned brand identifier.
          id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
