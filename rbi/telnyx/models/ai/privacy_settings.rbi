# typed: strong

module Telnyx
  module Models
    module AI
      class PrivacySettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::PrivacySettings, Telnyx::Internal::AnyHash)
          end

        # If true, conversation history and insights will be stored. If false, they will
        # not be stored. This in‑tool toggle governs solely the retention of conversation
        # history and insights via the AI assistant. It has no effect on any separate
        # recording, transcription, or storage configuration that you have set at the
        # account, number, or application level. All such external settings remain in
        # force regardless of your selection here.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :data_retention

        sig { params(data_retention: T::Boolean).void }
        attr_writer :data_retention

        # Requires every model call made for a web chat turn to be received and served
        # inside your organization's data-locality region, rather than only stored there.
        # Applies to web chat only — voice and messaging assistants are unaffected.
        # Enabling it requires a data-locality region with in-region inference (USA, EU,
        # AUS, UAE; see
        # [Inference regions](https://developers.telnyx.com/docs/inference/models/regions))
        # and Telnyx-hosted models for the assistant, its fallback, and any
        # conversation-flow node that overrides the model; the request is rejected
        # otherwise. Once enabled, send chat requests to your region's API hostname: a
        # request entering the platform in another region is rejected rather than
        # forwarded, because forwarding it would already have moved the content across the
        # border. Defaults to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :in_transit_data_locality

        sig { params(in_transit_data_locality: T::Boolean).void }
        attr_writer :in_transit_data_locality

        sig do
          params(
            data_retention: T::Boolean,
            in_transit_data_locality: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # If true, conversation history and insights will be stored. If false, they will
          # not be stored. This in‑tool toggle governs solely the retention of conversation
          # history and insights via the AI assistant. It has no effect on any separate
          # recording, transcription, or storage configuration that you have set at the
          # account, number, or application level. All such external settings remain in
          # force regardless of your selection here.
          data_retention: nil,
          # Requires every model call made for a web chat turn to be received and served
          # inside your organization's data-locality region, rather than only stored there.
          # Applies to web chat only — voice and messaging assistants are unaffected.
          # Enabling it requires a data-locality region with in-region inference (USA, EU,
          # AUS, UAE; see
          # [Inference regions](https://developers.telnyx.com/docs/inference/models/regions))
          # and Telnyx-hosted models for the assistant, its fallback, and any
          # conversation-flow node that overrides the model; the request is rejected
          # otherwise. Once enabled, send chat requests to your region's API hostname: a
          # request entering the platform in another region is rejected rather than
          # forwarded, because forwarding it would already have moved the content across the
          # border. Defaults to false.
          in_transit_data_locality: nil
        )
        end

        sig do
          override.returns(
            { data_retention: T::Boolean, in_transit_data_locality: T::Boolean }
          )
        end
        def to_hash
        end
      end
    end
  end
end
