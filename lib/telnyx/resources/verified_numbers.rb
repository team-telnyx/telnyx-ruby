# frozen_string_literal: true

module Telnyx
  module Resources
    class VerifiedNumbers
      # @return [Telnyx::Resources::VerifiedNumbers::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VerifiedNumberCreateParams} for more details.
      #
      # Initiates phone number verification procedure. Supports DTMF extension dialing
      # for voice calls to numbers behind IVR systems.
      #
      # @overload create(phone_number:, verification_method:, extension: nil, request_options: {})
      #
      # @param phone_number [String]
      #
      # @param verification_method [Symbol, Telnyx::Models::VerifiedNumberCreateParams::VerificationMethod] Verification method.
      #
      # @param extension [String, nil] Optional DTMF extension sequence to dial after the call is answered. This parame
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerifiedNumberCreateResponse]
      #
      # @see Telnyx::Models::VerifiedNumberCreateParams
      def create(params)
        parsed, options = Telnyx::VerifiedNumberCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "verified_numbers",
          body: parsed,
          model: Telnyx::Models::VerifiedNumberCreateResponse,
          options: options
        )
      end

      # Retrieve a verified number
      #
      # @overload retrieve(phone_number, request_options: {})
      #
      # @param phone_number [String] +E164 formatted phone number.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerifiedNumberDataWrapper]
      #
      # @see Telnyx::Models::VerifiedNumberRetrieveParams
      def retrieve(phone_number, params = {})
        @client.request(
          method: :get,
          path: ["verified_numbers/%1$s", phone_number],
          model: Telnyx::VerifiedNumberDataWrapper,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VerifiedNumberListParams} for more details.
      #
      # Gets a paginated list of Verified Numbers.
      #
      # @overload list(page: nil, request_options: {})
      #
      # @param page [Telnyx::Models::VerifiedNumberListParams::Page] Consolidated page parameter (deepObject style). Use page[size] and page[number]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerifiedNumberListResponse]
      #
      # @see Telnyx::Models::VerifiedNumberListParams
      def list(params = {})
        parsed, options = Telnyx::VerifiedNumberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "verified_numbers",
          query: parsed,
          model: Telnyx::Models::VerifiedNumberListResponse,
          options: options
        )
      end

      # Delete a verified number
      #
      # @overload delete(phone_number, request_options: {})
      #
      # @param phone_number [String] +E164 formatted phone number.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerifiedNumberDataWrapper]
      #
      # @see Telnyx::Models::VerifiedNumberDeleteParams
      def delete(phone_number, params = {})
        @client.request(
          method: :delete,
          path: ["verified_numbers/%1$s", phone_number],
          model: Telnyx::VerifiedNumberDataWrapper,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::VerifiedNumbers::Actions.new(client: client)
      end
    end
  end
end
