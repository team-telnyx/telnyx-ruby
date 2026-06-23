# typed: strong

module Telnyx
  module Models
    module AI
      # Whether to auto-publish the assistant's instructions as a Langfuse prompt.
      #
      # When ENABLED + prompt_name set, every assistant create/update pushes
      # `instructions` to Langfuse via create_prompt and stores the returned version in
      # prompt_version.
      module PromptSyncStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AI::PromptSyncStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED = T.let(:enabled, Telnyx::AI::PromptSyncStatus::TaggedSymbol)
        DISABLED = T.let(:disabled, Telnyx::AI::PromptSyncStatus::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::AI::PromptSyncStatus::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
