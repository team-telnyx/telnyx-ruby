# frozen_string_literal: true

module Telnyx
  module Resources
    class Messaging
      class Rcs
        # @return [Telnyx::Resources::Messaging::Rcs::Agents]
        attr_reader :agents

        # Adds a test phone number to an RCS agent for testing purposes.
        #
        # @overload invite_test_number(phone_number, id:, request_options: {})
        #
        # @param phone_number [String] Phone number in E164 format to invite for testing
        #
        # @param id [String] RCS agent ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Messaging::RcInviteTestNumberResponse]
        #
        # @see Telnyx::Models::Messaging::RcInviteTestNumberParams
        def invite_test_number(phone_number, params)
          parsed, options = Telnyx::Messaging::RcInviteTestNumberParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["messaging/rcs/test_number_invite/%1$s/%2$s", id, phone_number],
            model: Telnyx::Models::Messaging::RcInviteTestNumberResponse,
            options: options
          )
        end

        # List RCS capabilities of a given batch of phone numbers
        #
        # @overload list_bulk_capabilities(agent_id:, phone_numbers:, request_options: {})
        #
        # @param agent_id [String] RCS Agent ID
        #
        # @param phone_numbers [Array<String>] List of phone numbers to check
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Messaging::RcListBulkCapabilitiesResponse]
        #
        # @see Telnyx::Models::Messaging::RcListBulkCapabilitiesParams
        def list_bulk_capabilities(params)
          parsed, options = Telnyx::Messaging::RcListBulkCapabilitiesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "messaging/rcs/bulk_capabilities",
            body: parsed,
            model: Telnyx::Models::Messaging::RcListBulkCapabilitiesResponse,
            options: options
          )
        end

        # List RCS capabilities of a phone number
        #
        # @overload retrieve_capabilities(phone_number, agent_id:, request_options: {})
        #
        # @param phone_number [String] Phone number in E164 format
        #
        # @param agent_id [String] RCS agent ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Messaging::RcRetrieveCapabilitiesResponse]
        #
        # @see Telnyx::Models::Messaging::RcRetrieveCapabilitiesParams
        def retrieve_capabilities(phone_number, params)
          parsed, options = Telnyx::Messaging::RcRetrieveCapabilitiesParams.dump_request(params)
          agent_id =
            parsed.delete(:agent_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["messaging/rcs/capabilities/%1$s/%2$s", agent_id, phone_number],
            model: Telnyx::Models::Messaging::RcRetrieveCapabilitiesResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @agents = Telnyx::Resources::Messaging::Rcs::Agents.new(client: client)
        end
      end
    end
  end
end
