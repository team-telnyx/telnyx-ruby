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

        sig { params(data_retention: T::Boolean).returns(T.attached_class) }
        def self.new(
          # If true, conversation history and insights will be stored. If false, they will
          # not be stored. This in‑tool toggle governs solely the retention of conversation
          # history and insights via the AI assistant. It has no effect on any separate
          # recording, transcription, or storage configuration that you have set at the
          # account, number, or application level. All such external settings remain in
          # force regardless of your selection here.
          data_retention: nil
        )
        end

        sig { override.returns({ data_retention: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
