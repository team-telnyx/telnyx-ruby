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

        # Controls redaction of personally identifiable information (PII) from the
        # conversation history that is stored for this assistant. `disabled` (default)
        # stores content as-is. `redact` replaces detected PII with `<PII:type/>`
        # placeholders (e.g. `<PII:name/>`, `<PII:phone/>`) as the stored copies are
        # written: message content (user, assistant, and tool-result messages) and
        # tool-call arguments are redacted when written to conversation history, so the
        # stored transcript, its read-back via the history API, and any insights generated
        # from the stored messages contain the placeholders instead of the PII; response
        # bodies returned by webhook tools are redacted too, as stored in the webhook logs
        # — a per-conversation record separate from the transcript. In the Mission Control
        # Portal this field appears as a "PII Redaction" on/off toggle, where Enabled
        # corresponds to `redact`. Redaction runs when the stored copy is written, after
        # the LLM has generated its reply: the live conversation is not redacted, the
        # assistant's tools keep receiving the full (unredacted) values during the call,
        # and the LLM still sees full content in its context window. Call recordings
        # (including any recording layout configured under telephony settings) and the
        # payloads of messages/webhooks delivered during the call are never redacted by
        # this setting. The set of detected PII types (names, street addresses, phone
        # numbers, email addresses, government identifiers like SSN and driver's license
        # numbers, credit card and bank account numbers, IP addresses, dates of birth, and
        # other identifiers unique to a person) is fixed by Telnyx and cannot be
        # configured or extended per assistant. Assistants with `redact` cannot be used
        # for SMS/WhatsApp messaging (that combination is rejected with a 400 error);
        # voice and web chat are unaffected.
        sig do
          returns(
            T.nilable(Telnyx::AI::PrivacySettings::PiiRedaction::OrSymbol)
          )
        end
        attr_reader :pii_redaction

        sig do
          params(
            pii_redaction: Telnyx::AI::PrivacySettings::PiiRedaction::OrSymbol
          ).void
        end
        attr_writer :pii_redaction

        sig do
          params(
            data_retention: T::Boolean,
            in_transit_data_locality: T::Boolean,
            pii_redaction: Telnyx::AI::PrivacySettings::PiiRedaction::OrSymbol
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
          in_transit_data_locality: nil,
          # Controls redaction of personally identifiable information (PII) from the
          # conversation history that is stored for this assistant. `disabled` (default)
          # stores content as-is. `redact` replaces detected PII with `<PII:type/>`
          # placeholders (e.g. `<PII:name/>`, `<PII:phone/>`) as the stored copies are
          # written: message content (user, assistant, and tool-result messages) and
          # tool-call arguments are redacted when written to conversation history, so the
          # stored transcript, its read-back via the history API, and any insights generated
          # from the stored messages contain the placeholders instead of the PII; response
          # bodies returned by webhook tools are redacted too, as stored in the webhook logs
          # — a per-conversation record separate from the transcript. In the Mission Control
          # Portal this field appears as a "PII Redaction" on/off toggle, where Enabled
          # corresponds to `redact`. Redaction runs when the stored copy is written, after
          # the LLM has generated its reply: the live conversation is not redacted, the
          # assistant's tools keep receiving the full (unredacted) values during the call,
          # and the LLM still sees full content in its context window. Call recordings
          # (including any recording layout configured under telephony settings) and the
          # payloads of messages/webhooks delivered during the call are never redacted by
          # this setting. The set of detected PII types (names, street addresses, phone
          # numbers, email addresses, government identifiers like SSN and driver's license
          # numbers, credit card and bank account numbers, IP addresses, dates of birth, and
          # other identifiers unique to a person) is fixed by Telnyx and cannot be
          # configured or extended per assistant. Assistants with `redact` cannot be used
          # for SMS/WhatsApp messaging (that combination is rejected with a 400 error);
          # voice and web chat are unaffected.
          pii_redaction: nil
        )
        end

        sig do
          override.returns(
            {
              data_retention: T::Boolean,
              in_transit_data_locality: T::Boolean,
              pii_redaction: Telnyx::AI::PrivacySettings::PiiRedaction::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Controls redaction of personally identifiable information (PII) from the
        # conversation history that is stored for this assistant. `disabled` (default)
        # stores content as-is. `redact` replaces detected PII with `<PII:type/>`
        # placeholders (e.g. `<PII:name/>`, `<PII:phone/>`) as the stored copies are
        # written: message content (user, assistant, and tool-result messages) and
        # tool-call arguments are redacted when written to conversation history, so the
        # stored transcript, its read-back via the history API, and any insights generated
        # from the stored messages contain the placeholders instead of the PII; response
        # bodies returned by webhook tools are redacted too, as stored in the webhook logs
        # — a per-conversation record separate from the transcript. In the Mission Control
        # Portal this field appears as a "PII Redaction" on/off toggle, where Enabled
        # corresponds to `redact`. Redaction runs when the stored copy is written, after
        # the LLM has generated its reply: the live conversation is not redacted, the
        # assistant's tools keep receiving the full (unredacted) values during the call,
        # and the LLM still sees full content in its context window. Call recordings
        # (including any recording layout configured under telephony settings) and the
        # payloads of messages/webhooks delivered during the call are never redacted by
        # this setting. The set of detected PII types (names, street addresses, phone
        # numbers, email addresses, government identifiers like SSN and driver's license
        # numbers, credit card and bank account numbers, IP addresses, dates of birth, and
        # other identifiers unique to a person) is fixed by Telnyx and cannot be
        # configured or extended per assistant. Assistants with `redact` cannot be used
        # for SMS/WhatsApp messaging (that combination is rejected with a 400 error);
        # voice and web chat are unaffected.
        module PiiRedaction
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::PrivacySettings::PiiRedaction)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISABLED =
            T.let(
              :disabled,
              Telnyx::AI::PrivacySettings::PiiRedaction::TaggedSymbol
            )
          REDACT =
            T.let(
              :redact,
              Telnyx::AI::PrivacySettings::PiiRedaction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::PrivacySettings::PiiRedaction::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
