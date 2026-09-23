# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class PrivacySettings < Telnyx::Internal::Type::BaseModel
        # @!attribute data_retention
        #   If true, conversation history and insights will be stored. If false, they will
        #   not be stored. This in‑tool toggle governs solely the retention of conversation
        #   history and insights via the AI assistant. It has no effect on any separate
        #   recording, transcription, or storage configuration that you have set at the
        #   account, number, or application level. All such external settings remain in
        #   force regardless of your selection here.
        #
        #   @return [Boolean, nil]
        optional :data_retention, Telnyx::Internal::Type::Boolean

        # @!attribute in_transit_data_locality
        #   Requires every model call made for a web chat turn to be received and served
        #   inside your organization's data-locality region, rather than only stored there.
        #   Applies to web chat only — voice and messaging assistants are unaffected.
        #   Enabling it requires a data-locality region with in-region inference (USA, EU,
        #   AUS, UAE; see
        #   [Inference regions](https://developers.telnyx.com/docs/inference/models/regions))
        #   and Telnyx-hosted models for the assistant, its fallback, and any
        #   conversation-flow node that overrides the model; the request is rejected
        #   otherwise. Once enabled, send chat requests to your region's API hostname: a
        #   request entering the platform in another region is rejected rather than
        #   forwarded, because forwarding it would already have moved the content across the
        #   border. Defaults to false.
        #
        #   @return [Boolean, nil]
        optional :in_transit_data_locality, Telnyx::Internal::Type::Boolean

        # @!method initialize(data_retention: nil, in_transit_data_locality: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::PrivacySettings} for more details.
        #
        #   @param data_retention [Boolean] If true, conversation history and insights will be stored. If false, they will n
        #
        #   @param in_transit_data_locality [Boolean] Requires every model call made for a web chat turn to be received and served ins
      end
    end
  end
end
