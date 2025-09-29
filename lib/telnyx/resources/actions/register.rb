# frozen_string_literal: true

module Telnyx
  module Resources
    class Actions
      class Register
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Actions::RegisterCreateParams} for more details.
        #
        # Register the SIM cards associated with the provided registration codes to the
        # current user's account.<br/><br/> If <code>sim_card_group_id</code> is provided,
        # the SIM cards will be associated with that group. Otherwise, the default group
        # for the current user will be used.<br/><br/>
        #
        # @overload create(registration_codes:, sim_card_group_id: nil, status: nil, tags: nil, request_options: {})
        #
        # @param registration_codes [Array<String>]
        #
        # @param sim_card_group_id [String] The group SIMCardGroup identification. This attribute can be <code>null</code> w
        #
        # @param status [Symbol, Telnyx::Models::Actions::RegisterCreateParams::Status] Status on which the SIM card will be set after being successful registered.
        #
        # @param tags [Array<String>] Searchable tags associated with the SIM card
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Actions::RegisterCreateResponse]
        #
        # @see Telnyx::Models::Actions::RegisterCreateParams
        def create(params)
          parsed, options = Telnyx::Actions::RegisterCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "actions/register/sim_cards",
            body: parsed,
            model: Telnyx::Models::Actions::RegisterCreateResponse,
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
