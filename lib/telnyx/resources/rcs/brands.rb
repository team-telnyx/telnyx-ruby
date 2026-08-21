# frozen_string_literal: true

module Telnyx
  module Resources
    class Rcs
      # Manage the legal business entities that operate RCS agents.
      class Brands
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Rcs::BrandCreateParams} for more details.
        #
        # Creates an editable RCS brand draft. Creating the draft does not begin external
        # review.
        #
        # @overload create(addresses:, contacts:, display_name:, identifiers:, legal_entity_type:, legal_name:, organization_type:, website_url:, profile_id: nil, request_options: {})
        #
        # @param addresses [Hash{Symbol=>Telnyx::Models::Rcs::BrandAddress}]
        #
        # @param contacts [Telnyx::Models::Rcs::BrandCreateParams::Contacts] Named business contacts. Use the `brand` key for the required BRAND contact.
        #
        # @param display_name [String]
        #
        # @param identifiers [Telnyx::Models::Rcs::BrandCreateParams::Identifiers] Named business identifiers. Use the `ein` key for the required EIN and `stock_sy
        #
        # @param legal_entity_type [Symbol, Telnyx::Models::Rcs::BrandLegalEntityType]
        #
        # @param legal_name [String]
        #
        # @param organization_type [Symbol, Telnyx::Models::Rcs::BrandOrganizationType]
        #
        # @param website_url [String]
        #
        # @param profile_id [String, nil] A Messaging Profile owned by the authenticated organization. Agents inherit this
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rcs::BrandResponse]
        #
        # @see Telnyx::Models::Rcs::BrandCreateParams
        def create(params)
          parsed, options = Telnyx::Rcs::BrandCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "rcs/brands",
            body: parsed,
            model: Telnyx::Rcs::BrandResponse,
            options: options
          )
        end

        # Retrieves an RCS brand and its current lifecycle status.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] The Telnyx-assigned brand identifier.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rcs::BrandResponse]
        #
        # @see Telnyx::Models::Rcs::BrandRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["rcs/brands/%1$s", id],
            model: Telnyx::Rcs::BrandResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Rcs::BrandUpdateParams} for more details.
        #
        # Updates one or more fields on a brand while its status is `CREATED`. Submitted
        # brands cannot be changed.
        #
        # @overload update(id, addresses: nil, contacts: nil, display_name: nil, identifiers: nil, legal_entity_type: nil, legal_name: nil, organization_type: nil, profile_id: nil, website_url: nil, request_options: {})
        #
        # @param id [String] The Telnyx-assigned brand identifier.
        #
        # @param addresses [Hash{Symbol=>Telnyx::Models::Rcs::BrandAddress}]
        #
        # @param contacts [Telnyx::Models::Rcs::BrandUpdateParams::Contacts] Named business contacts. Use the `brand` key for the required BRAND contact.
        #
        # @param display_name [String]
        #
        # @param identifiers [Telnyx::Models::Rcs::BrandUpdateParams::Identifiers] Named business identifiers. Use the `ein` key for the required EIN and `stock_sy
        #
        # @param legal_entity_type [Symbol, Telnyx::Models::Rcs::BrandLegalEntityType]
        #
        # @param legal_name [String]
        #
        # @param organization_type [Symbol, Telnyx::Models::Rcs::BrandOrganizationType]
        #
        # @param profile_id [String]
        #
        # @param website_url [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rcs::BrandResponse]
        #
        # @see Telnyx::Models::Rcs::BrandUpdateParams
        def update(id, params = {})
          parsed, options = Telnyx::Rcs::BrandUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["rcs/brands/%1$s", id],
            body: parsed,
            model: Telnyx::Rcs::BrandResponse,
            options: options
          )
        end

        # Lists RCS brands owned by the authenticated organization.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Telnyx::Models::Rcs::BrandResponse>]
        #
        # @see Telnyx::Models::Rcs::BrandListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "rcs/brands",
            model: Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::BrandResponse],
            options: params[:request_options]
          )
        end

        # Starts asynchronous provider provisioning and external review for a brand.
        # Repeating this request for an in-progress brand returns its current state
        # without creating new work.
        #
        # @overload submit(id, request_options: {})
        #
        # @param id [String] The Telnyx-assigned brand identifier.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Rcs::BrandResponse]
        #
        # @see Telnyx::Models::Rcs::BrandSubmitParams
        def submit(id, params = {})
          @client.request(
            method: :post,
            path: ["rcs/brands/%1$s/submit", id],
            model: Telnyx::Rcs::BrandResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
