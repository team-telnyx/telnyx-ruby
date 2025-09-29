# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#record_resume
      class ActionRecordResumeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute recording_id
        #   Use this field to resume specific recording.
        #
        #   @return [String, nil]
        optional :recording_id, String

        # @!method initialize(command_id: nil, recording_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionRecordResumeParams} for more details.
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param recording_id [String] Use this field to resume specific recording.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
