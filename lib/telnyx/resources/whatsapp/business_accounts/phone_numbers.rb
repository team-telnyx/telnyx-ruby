# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      class BusinessAccounts
        class PhoneNumbers
          # List phone numbers for a WABA
          #
          # @overload list(id, page_number: nil, page_size: nil, request_options: {})
          #
          # @param id [String] Whatsapp Business Account ID
          #
          # @param page_number [Integer]
          #
          # @param page_size [Integer]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse>]
          #
          # @see Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListParams
          def list(id, params = {})
            parsed, options = Telnyx::Whatsapp::BusinessAccounts::PhoneNumberListParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["v2/whatsapp/business_accounts/%1$s/phone_numbers", id],
              query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse,
              options: options
            )
          end

          # Initialize Whatsapp phone number verification
          #
          # @overload initialize_verification(id, display_name:, phone_number:, language: nil, verification_method: nil, request_options: {})
          #
          # @param id [String] Whatsapp Business Account ID
          #
          # @param display_name [String]
          #
          # @param phone_number [String]
          #
          # @param language [String]
          #
          # @param verification_method [Symbol, Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams::VerificationMethod]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams
          def initialize_verification(id, params)
            parsed, options =
              Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["v2/whatsapp/business_accounts/%1$s/phone_numbers", id],
              body: parsed,
              model: NilClass,
              options: options
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
end
