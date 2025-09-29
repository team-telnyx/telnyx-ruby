# frozen_string_literal: true

module Telnyx
  module Resources
    class Verifications
      class ByPhoneNumber
        # @return [Telnyx::Resources::Verifications::ByPhoneNumber::Actions]
        attr_reader :actions

        # List verifications by phone number
        #
        # @overload list(phone_number, request_options: {})
        #
        # @param phone_number [String] +E164 formatted phone number.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Verifications::ByPhoneNumberListResponse]
        #
        # @see Telnyx::Models::Verifications::ByPhoneNumberListParams
        def list(phone_number, params = {})
          @client.request(
            method: :get,
            path: ["verifications/by_phone_number/%1$s", phone_number],
            model: Telnyx::Models::Verifications::ByPhoneNumberListResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @actions = Telnyx::Resources::Verifications::ByPhoneNumber::Actions.new(client: client)
        end
      end
    end
  end
end
