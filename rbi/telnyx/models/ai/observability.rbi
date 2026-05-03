# typed: strong

module Telnyx
  module Models
    module AI
      class Observability < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::Observability, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :host

        sig { params(host: String).void }
        attr_writer :host

        sig { returns(T.nilable(String)) }
        attr_reader :prompt_label

        sig { params(prompt_label: String).void }
        attr_writer :prompt_label

        sig { returns(T.nilable(String)) }
        attr_reader :prompt_name

        sig { params(prompt_name: String).void }
        attr_writer :prompt_name

        # Whether to auto-publish the assistant's instructions as a Langfuse prompt.
        #
        # When ENABLED + prompt_name set, every assistant create/update pushes
        # `instructions` to Langfuse via create_prompt and stores the returned version in
        # prompt_version.
        sig do
          returns(
            T.nilable(Telnyx::AI::Observability::PromptSync::TaggedSymbol)
          )
        end
        attr_reader :prompt_sync

        sig do
          params(
            prompt_sync: Telnyx::AI::Observability::PromptSync::OrSymbol
          ).void
        end
        attr_writer :prompt_sync

        sig { returns(T.nilable(Integer)) }
        attr_reader :prompt_version

        sig { params(prompt_version: Integer).void }
        attr_writer :prompt_version

        sig { returns(T.nilable(String)) }
        attr_reader :public_key_ref

        sig { params(public_key_ref: String).void }
        attr_writer :public_key_ref

        sig { returns(T.nilable(String)) }
        attr_reader :secret_key_ref

        sig { params(secret_key_ref: String).void }
        attr_writer :secret_key_ref

        sig do
          returns(T.nilable(Telnyx::AI::Observability::Status::TaggedSymbol))
        end
        attr_reader :status

        sig { params(status: Telnyx::AI::Observability::Status::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            host: String,
            prompt_label: String,
            prompt_name: String,
            prompt_sync: Telnyx::AI::Observability::PromptSync::OrSymbol,
            prompt_version: Integer,
            public_key_ref: String,
            secret_key_ref: String,
            status: Telnyx::AI::Observability::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          host: nil,
          prompt_label: nil,
          prompt_name: nil,
          # Whether to auto-publish the assistant's instructions as a Langfuse prompt.
          #
          # When ENABLED + prompt_name set, every assistant create/update pushes
          # `instructions` to Langfuse via create_prompt and stores the returned version in
          # prompt_version.
          prompt_sync: nil,
          prompt_version: nil,
          public_key_ref: nil,
          secret_key_ref: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              host: String,
              prompt_label: String,
              prompt_name: String,
              prompt_sync: Telnyx::AI::Observability::PromptSync::TaggedSymbol,
              prompt_version: Integer,
              public_key_ref: String,
              secret_key_ref: String,
              status: Telnyx::AI::Observability::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Whether to auto-publish the assistant's instructions as a Langfuse prompt.
        #
        # When ENABLED + prompt_name set, every assistant create/update pushes
        # `instructions` to Langfuse via create_prompt and stores the returned version in
        # prompt_version.
        module PromptSync
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::Observability::PromptSync)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLED =
            T.let(:enabled, Telnyx::AI::Observability::PromptSync::TaggedSymbol)
          DISABLED =
            T.let(
              :disabled,
              Telnyx::AI::Observability::PromptSync::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::Observability::PromptSync::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::Observability::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLED =
            T.let(:enabled, Telnyx::AI::Observability::Status::TaggedSymbol)
          DISABLED =
            T.let(:disabled, Telnyx::AI::Observability::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::Observability::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
