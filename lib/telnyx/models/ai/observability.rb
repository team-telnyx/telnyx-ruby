# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class Observability < Telnyx::Internal::Type::BaseModel
        # @!attribute host
        #
        #   @return [String, nil]
        optional :host, String

        # @!attribute prompt_label
        #
        #   @return [String, nil]
        optional :prompt_label, String

        # @!attribute prompt_name
        #
        #   @return [String, nil]
        optional :prompt_name, String

        # @!attribute prompt_sync
        #   Whether to auto-publish the assistant's instructions as a Langfuse prompt.
        #
        #   When ENABLED + prompt_name set, every assistant create/update pushes
        #   `instructions` to Langfuse via create_prompt and stores the returned version in
        #   prompt_version.
        #
        #   @return [Symbol, Telnyx::Models::AI::PromptSyncStatus, nil]
        optional :prompt_sync, enum: -> { Telnyx::AI::PromptSyncStatus }

        # @!attribute prompt_version
        #
        #   @return [Integer, nil]
        optional :prompt_version, Integer

        # @!attribute public_key_ref
        #
        #   @return [String, nil]
        optional :public_key_ref, String

        # @!attribute secret_key_ref
        #
        #   @return [String, nil]
        optional :secret_key_ref, String

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::AI::ObservabilityStatus, nil]
        optional :status, enum: -> { Telnyx::AI::ObservabilityStatus }

        # @!method initialize(host: nil, prompt_label: nil, prompt_name: nil, prompt_sync: nil, prompt_version: nil, public_key_ref: nil, secret_key_ref: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::Observability} for more details.
        #
        #   @param host [String]
        #
        #   @param prompt_label [String]
        #
        #   @param prompt_name [String]
        #
        #   @param prompt_sync [Symbol, Telnyx::Models::AI::PromptSyncStatus] Whether to auto-publish the assistant's instructions as a Langfuse prompt.
        #
        #   @param prompt_version [Integer]
        #
        #   @param public_key_ref [String]
        #
        #   @param secret_key_ref [String]
        #
        #   @param status [Symbol, Telnyx::Models::AI::ObservabilityStatus]
      end
    end
  end
end
