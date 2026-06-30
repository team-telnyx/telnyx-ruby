# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp phone numbers
      class PhoneNumbers
        # Manage Whatsapp phone numbers
        # @return [Telnyx::Resources::Whatsapp::PhoneNumbers::CallingSettings]
        attr_reader :calling_settings

        # Manage Whatsapp phone numbers
        # @return [Telnyx::Resources::Whatsapp::PhoneNumbers::Profile]
        attr_reader :profile

        # List Whatsapp phone numbers
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer]
        # @param page_size [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Whatsapp::PhoneNumberListResponse>]
        #
        # @see Telnyx::Models::Whatsapp::PhoneNumberListParams
        def list(params = {})
          parsed, options = Telnyx::Whatsapp::PhoneNumberListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "v2/whatsapp/phone_numbers",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Whatsapp::PhoneNumberListResponse,
            options: options
          )
        end

        # Delete a Whatsapp phone number
        #
        # @overload delete(phone_number, request_options: {})
        #
        # @param phone_number [String] Phone number (E.164 format)
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Whatsapp::PhoneNumberDeleteParams
        def delete(phone_number, params = {})
          @client.request(
            method: :delete,
            path: ["v2/whatsapp/phone_numbers/%1$s", phone_number],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Resend verification code
        #
        # @overload resend_verification(phone_number, verification_method: nil, request_options: {})
        #
        # @param phone_number [String] Phone number (E.164 format)
        #
        # @param verification_method [Symbol, Telnyx::Models::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Whatsapp::PhoneNumberResendVerificationParams
        def resend_verification(phone_number, params = {})
          parsed, options = Telnyx::Whatsapp::PhoneNumberResendVerificationParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v2/whatsapp/phone_numbers/%1$s/resend_verification", phone_number],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Submit verification code for a phone number
        #
        # @overload verify(phone_number, code:, request_options: {})
        #
        # @param phone_number [String] Phone number (E.164 format)
        #
        # @param code [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Whatsapp::PhoneNumberVerifyParams
        def verify(phone_number, params)
          parsed, options = Telnyx::Whatsapp::PhoneNumberVerifyParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v2/whatsapp/phone_numbers/%1$s/verify", phone_number],
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
          @calling_settings = Telnyx::Resources::Whatsapp::PhoneNumbers::CallingSettings.new(client: client)
          @profile = Telnyx::Resources::Whatsapp::PhoneNumbers::Profile.new(client: client)
        end
      end
    end
  end
end
