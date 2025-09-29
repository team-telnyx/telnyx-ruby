# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#send_sip_info
      class ActionSendSipInfoParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute body
        #   Content of the SIP INFO
        #
        #   @return [String]
        required :body, String

        # @!attribute content_type
        #   Content type of the INFO body. Must be MIME type compliant. There is a 1,400
        #   bytes limit
        #
        #   @return [String]
        required :content_type, String

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!method initialize(body:, content_type:, client_state: nil, command_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionSendSipInfoParams} for more details.
        #
        #   @param body [String] Content of the SIP INFO
        #
        #   @param content_type [String] Content type of the INFO body. Must be MIME type compliant. There is a 1,400 byt
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
