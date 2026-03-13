# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp business accounts
      class BusinessAccounts
        # @return [Telnyx::Resources::Whatsapp::BusinessAccounts::PhoneNumbers]
        attr_reader :phone_numbers

        # Manage Whatsapp business accounts
        # @return [Telnyx::Resources::Whatsapp::BusinessAccounts::Settings]
        attr_reader :settings

        # Get a single Whatsapp Business Account
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Whatsapp Business Account ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse]
        #
        # @see Telnyx::Models::Whatsapp::BusinessAccountRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["v2/whatsapp/business_accounts/%1$s", id],
            model: Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse,
            options: params[:request_options]
          )
        end

        # List Whatsapp Business Accounts
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer]
        # @param page_size [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Whatsapp::BusinessAccountListResponse>]
        #
        # @see Telnyx::Models::Whatsapp::BusinessAccountListParams
        def list(params = {})
          parsed, options = Telnyx::Whatsapp::BusinessAccountListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "v2/whatsapp/business_accounts",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Whatsapp::BusinessAccountListResponse,
            options: options
          )
        end

        # Delete a Whatsapp Business Account
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String] Whatsapp Business Account ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Whatsapp::BusinessAccountDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["v2/whatsapp/business_accounts/%1$s", id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @phone_numbers = Telnyx::Resources::Whatsapp::BusinessAccounts::PhoneNumbers.new(client: client)
          @settings = Telnyx::Resources::Whatsapp::BusinessAccounts::Settings.new(client: client)
        end
      end
    end
  end
end
