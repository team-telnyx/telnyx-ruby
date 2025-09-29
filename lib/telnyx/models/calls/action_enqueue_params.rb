# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#enqueue
      class ActionEnqueueParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute queue_name
        #   The name of the queue the call should be put in. If a queue with a given name
        #   doesn't exist yet it will be created.
        #
        #   @return [String]
        required :queue_name, String

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

        # @!attribute max_size
        #   The maximum number of calls allowed in the queue at a given time. Can't be
        #   modified for an existing queue.
        #
        #   @return [Integer, nil]
        optional :max_size, Integer

        # @!attribute max_wait_time_secs
        #   The number of seconds after which the call will be removed from the queue.
        #
        #   @return [Integer, nil]
        optional :max_wait_time_secs, Integer

        # @!method initialize(queue_name:, client_state: nil, command_id: nil, max_size: nil, max_wait_time_secs: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionEnqueueParams} for more details.
        #
        #   @param queue_name [String] The name of the queue the call should be put in. If a queue with a given name do
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param max_size [Integer] The maximum number of calls allowed in the queue at a given time. Can't be modif
        #
        #   @param max_wait_time_secs [Integer] The number of seconds after which the call will be removed from the queue.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
