# typed: strong

module Telnyx
  module Models
    module AI
      class ConversationFlowReq < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ConversationFlowReq, Telnyx::Internal::AnyHash)
          end

        # All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
        # (`type: prompt`) or a tool node (`type: tool`).
        sig do
          returns(
            T::Array[
              T.any(
                Telnyx::AI::ConversationFlowReq::Node::Prompt,
                Telnyx::AI::ConversationFlowReq::Node::Tool,
                Telnyx::AI::ConversationFlowReq::Node::Speak
              )
            ]
          )
        end
        attr_accessor :nodes

        # ID of the node where the conversation begins.
        sig { returns(String) }
        attr_accessor :start_node_id

        # Directed transitions between nodes. May be empty for a single-node flow.
        sig { returns(T.nilable(T::Array[Telnyx::AI::FlowEdge])) }
        attr_reader :edges

        sig { params(edges: T::Array[Telnyx::AI::FlowEdge::OrHash]).void }
        attr_writer :edges

        # Conversation flow as supplied by API clients (create / update).
        #
        # A directed graph of `FlowNodeReq` connected by `FlowEdge`s. Validation enforces
        # unique node/edge IDs, that `start_node_id` references a real node, and that
        # every edge's endpoints reference real nodes.
        sig do
          params(
            nodes:
              T::Array[
                T.any(
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::OrHash,
                  Telnyx::AI::ConversationFlowReq::Node::Tool::OrHash,
                  Telnyx::AI::ConversationFlowReq::Node::Speak::OrHash
                )
              ],
            start_node_id: String,
            edges: T::Array[Telnyx::AI::FlowEdge::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
          # (`type: prompt`) or a tool node (`type: tool`).
          nodes:,
          # ID of the node where the conversation begins.
          start_node_id:,
          # Directed transitions between nodes. May be empty for a single-node flow.
          edges: nil
        )
        end

        sig do
          override.returns(
            {
              nodes:
                T::Array[
                  T.any(
                    Telnyx::AI::ConversationFlowReq::Node::Prompt,
                    Telnyx::AI::ConversationFlowReq::Node::Tool,
                    Telnyx::AI::ConversationFlowReq::Node::Speak
                  )
                ],
              start_node_id: String,
              edges: T::Array[Telnyx::AI::FlowEdge]
            }
          )
        end
        def to_hash
        end

        # One step in a conversation flow, as supplied by API clients.
        #
        # Each node carries the prompt, tool scope, and optional overrides for
        # model/voice/transcription. Unset overrides cascade from the assistant.
        module Node
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::ConversationFlowReq::Node::Prompt,
                Telnyx::AI::ConversationFlowReq::Node::Tool,
                Telnyx::AI::ConversationFlowReq::Node::Speak
              )
            end

          class Prompt < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::ConversationFlowReq::Node::Prompt,
                  Telnyx::Internal::AnyHash
                )
              end

            # Caller-supplied unique identifier for this node within the flow.
            sig { returns(String) }
            attr_accessor :id

            # Prompt that drives the LLM while this node is active. Required.
            sig { returns(String) }
            attr_accessor :instructions

            # Override for `Assistant.external_llm` while this node is active. Use this to
            # route a node's turns to a different external LLM (different `model`, `base_url`,
            # credentials). Part of the LLM bundle — see `model` for cascade semantics.
            # Mutually exclusive with `model` on the node (a single LLM identity per node).
            sig { returns(T.nilable(Telnyx::AI::ExternalLlmReq)) }
            attr_reader :external_llm

            sig do
              params(external_llm: Telnyx::AI::ExternalLlmReq::OrHash).void
            end
            attr_writer :external_llm

            # How `instructions` combine with the assistant-level instructions. `replace`
            # (default): the node's instructions are used alone. `append`: the node's
            # instructions are concatenated after the assistant's instructions.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::InstructionsMode::OrSymbol
                )
              )
            end
            attr_reader :instructions_mode

            sig do
              params(
                instructions_mode:
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::InstructionsMode::OrSymbol
              ).void
            end
            attr_writer :instructions_mode

            # Override for `Assistant.llm_api_key_ref` while this node is active. Part of the
            # LLM bundle — see `model` for cascade semantics.
            sig { returns(T.nilable(String)) }
            attr_reader :llm_api_key_ref

            sig { params(llm_api_key_ref: String).void }
            attr_writer :llm_api_key_ref

            # Override for `Assistant.model` while this node is active. Part of the LLM bundle
            # (`model` + `llm_api_key_ref` + `external_llm`): when any of the three is set on
            # the node, all three are taken from the node and the assistant-level LLM identity
            # is not consulted. When none of the three is set, the assistant's bundle cascades
            # unchanged.
            sig { returns(T.nilable(String)) }
            attr_reader :model

            sig { params(model: String).void }
            attr_writer :model

            # Optional human-readable label, displayed in authoring UIs.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
            # by the runtime; round-trips so frontends can persist graph layout across
            # reloads.
            sig { returns(T.nilable(Telnyx::AI::NodePosition)) }
            attr_reader :position

            sig { params(position: Telnyx::AI::NodePosition::OrHash).void }
            attr_writer :position

            # IDs of shared (org-level) tools available at this node. Knowledge bases are
            # attached the same way — via a shared retrieval tool. Tools not listed here are
            # not callable while this node is active.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :shared_tool_ids

            sig { params(shared_tool_ids: T::Array[String]).void }
            attr_writer :shared_tool_ids

            # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
            # (default): only the node's tools are callable. `append`: the node's tools are
            # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::ToolsMode::OrSymbol
                )
              )
            end
            attr_reader :tools_mode

            sig do
              params(
                tools_mode:
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::ToolsMode::OrSymbol
              ).void
            end
            attr_writer :tools_mode

            # Per-node transcription override (model/language/region). Unset fields cascade
            # from the assistant-level transcription.
            sig { returns(T.nilable(Telnyx::AI::TranscriptionSettings)) }
            attr_reader :transcription

            sig do
              params(
                transcription: Telnyx::AI::TranscriptionSettings::OrHash
              ).void
            end
            attr_writer :transcription

            # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
            # standalone tool execution (see `ToolNodeReq`).
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::Type::OrSymbol
              ).void
            end
            attr_writer :type

            # Per-node voice override. Only fields set here override the assistant-level voice
            # settings; unset fields cascade.
            sig { returns(T.nilable(Telnyx::AI::VoiceSettings)) }
            attr_reader :voice_settings

            sig do
              params(voice_settings: Telnyx::AI::VoiceSettings::OrHash).void
            end
            attr_writer :voice_settings

            # One step in a conversation flow, as supplied by API clients.
            #
            # Each node carries the prompt, tool scope, and optional overrides for
            # model/voice/transcription. Unset overrides cascade from the assistant.
            sig do
              params(
                id: String,
                instructions: String,
                external_llm: Telnyx::AI::ExternalLlmReq::OrHash,
                instructions_mode:
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::InstructionsMode::OrSymbol,
                llm_api_key_ref: String,
                model: String,
                name: String,
                position: Telnyx::AI::NodePosition::OrHash,
                shared_tool_ids: T::Array[String],
                tools_mode:
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::ToolsMode::OrSymbol,
                transcription: Telnyx::AI::TranscriptionSettings::OrHash,
                type:
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::Type::OrSymbol,
                voice_settings: Telnyx::AI::VoiceSettings::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Caller-supplied unique identifier for this node within the flow.
              id:,
              # Prompt that drives the LLM while this node is active. Required.
              instructions:,
              # Override for `Assistant.external_llm` while this node is active. Use this to
              # route a node's turns to a different external LLM (different `model`, `base_url`,
              # credentials). Part of the LLM bundle — see `model` for cascade semantics.
              # Mutually exclusive with `model` on the node (a single LLM identity per node).
              external_llm: nil,
              # How `instructions` combine with the assistant-level instructions. `replace`
              # (default): the node's instructions are used alone. `append`: the node's
              # instructions are concatenated after the assistant's instructions.
              instructions_mode: nil,
              # Override for `Assistant.llm_api_key_ref` while this node is active. Part of the
              # LLM bundle — see `model` for cascade semantics.
              llm_api_key_ref: nil,
              # Override for `Assistant.model` while this node is active. Part of the LLM bundle
              # (`model` + `llm_api_key_ref` + `external_llm`): when any of the three is set on
              # the node, all three are taken from the node and the assistant-level LLM identity
              # is not consulted. When none of the three is set, the assistant's bundle cascades
              # unchanged.
              model: nil,
              # Optional human-readable label, displayed in authoring UIs.
              name: nil,
              # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              # by the runtime; round-trips so frontends can persist graph layout across
              # reloads.
              position: nil,
              # IDs of shared (org-level) tools available at this node. Knowledge bases are
              # attached the same way — via a shared retrieval tool. Tools not listed here are
              # not callable while this node is active.
              shared_tool_ids: nil,
              # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
              # (default): only the node's tools are callable. `append`: the node's tools are
              # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
              tools_mode: nil,
              # Per-node transcription override (model/language/region). Unset fields cascade
              # from the assistant-level transcription.
              transcription: nil,
              # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
              # standalone tool execution (see `ToolNodeReq`).
              type: nil,
              # Per-node voice override. Only fields set here override the assistant-level voice
              # settings; unset fields cascade.
              voice_settings: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  instructions: String,
                  external_llm: Telnyx::AI::ExternalLlmReq,
                  instructions_mode:
                    Telnyx::AI::ConversationFlowReq::Node::Prompt::InstructionsMode::OrSymbol,
                  llm_api_key_ref: String,
                  model: String,
                  name: String,
                  position: Telnyx::AI::NodePosition,
                  shared_tool_ids: T::Array[String],
                  tools_mode:
                    Telnyx::AI::ConversationFlowReq::Node::Prompt::ToolsMode::OrSymbol,
                  transcription: Telnyx::AI::TranscriptionSettings,
                  type:
                    Telnyx::AI::ConversationFlowReq::Node::Prompt::Type::OrSymbol,
                  voice_settings: Telnyx::AI::VoiceSettings
                }
              )
            end
            def to_hash
            end

            # How `instructions` combine with the assistant-level instructions. `replace`
            # (default): the node's instructions are used alone. `append`: the node's
            # instructions are concatenated after the assistant's instructions.
            module InstructionsMode
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::ConversationFlowReq::Node::Prompt::InstructionsMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              REPLACE =
                T.let(
                  :replace,
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::InstructionsMode::TaggedSymbol
                )
              APPEND =
                T.let(
                  :append,
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::InstructionsMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::ConversationFlowReq::Node::Prompt::InstructionsMode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
            # (default): only the node's tools are callable. `append`: the node's tools are
            # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
            module ToolsMode
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::ConversationFlowReq::Node::Prompt::ToolsMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              REPLACE =
                T.let(
                  :replace,
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::ToolsMode::TaggedSymbol
                )
              APPEND =
                T.let(
                  :append,
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::ToolsMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::ConversationFlowReq::Node::Prompt::ToolsMode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
            # standalone tool execution (see `ToolNodeReq`).
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::ConversationFlowReq::Node::Prompt::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PROMPT =
                T.let(
                  :prompt,
                  Telnyx::AI::ConversationFlowReq::Node::Prompt::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::ConversationFlowReq::Node::Prompt::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Tool < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::ConversationFlowReq::Node::Tool,
                  Telnyx::Internal::AnyHash
                )
              end

            # Caller-supplied unique identifier for this node within the flow.
            sig { returns(String) }
            attr_accessor :id

            # ID of the single shared (org-level) tool this node executes. When the flow
            # reaches this node the tool runs as a deliberate step (no LLM turn); its outgoing
            # `tool_result` edges then route on the outcome. Arguments are filled from the
            # conversation's dynamic variables by name — a dynamic variable whose name matches
            # one of the tool's parameters supplies that argument. Cross-validated against the
            # org's shared tools on write.
            sig { returns(String) }
            attr_accessor :shared_tool_id

            # Optional human-readable label, displayed in authoring UIs.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
            # by the runtime; round-trips so frontends can persist graph layout across
            # reloads.
            sig { returns(T.nilable(Telnyx::AI::NodePosition)) }
            attr_reader :position

            sig { params(position: Telnyx::AI::NodePosition::OrHash).void }
            attr_writer :position

            # Node kind discriminator. Always `tool` for a tool node.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::ConversationFlowReq::Node::Tool::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::AI::ConversationFlowReq::Node::Tool::Type::OrSymbol
              ).void
            end
            attr_writer :type

            # A standalone tool step in a conversation flow, as supplied by clients.
            #
            # Unlike a prompt node, a tool node has no instructions or model — it isn't an LLM
            # turn. Reaching it deterministically runs one shared tool (arguments filled from
            # matching dynamic variables by name), then routes on the result via outgoing
            # `tool_result` edges.
            sig do
              params(
                id: String,
                shared_tool_id: String,
                name: String,
                position: Telnyx::AI::NodePosition::OrHash,
                type:
                  Telnyx::AI::ConversationFlowReq::Node::Tool::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Caller-supplied unique identifier for this node within the flow.
              id:,
              # ID of the single shared (org-level) tool this node executes. When the flow
              # reaches this node the tool runs as a deliberate step (no LLM turn); its outgoing
              # `tool_result` edges then route on the outcome. Arguments are filled from the
              # conversation's dynamic variables by name — a dynamic variable whose name matches
              # one of the tool's parameters supplies that argument. Cross-validated against the
              # org's shared tools on write.
              shared_tool_id:,
              # Optional human-readable label, displayed in authoring UIs.
              name: nil,
              # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              # by the runtime; round-trips so frontends can persist graph layout across
              # reloads.
              position: nil,
              # Node kind discriminator. Always `tool` for a tool node.
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  shared_tool_id: String,
                  name: String,
                  position: Telnyx::AI::NodePosition,
                  type:
                    Telnyx::AI::ConversationFlowReq::Node::Tool::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Node kind discriminator. Always `tool` for a tool node.
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::ConversationFlowReq::Node::Tool::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TOOL =
                T.let(
                  :tool,
                  Telnyx::AI::ConversationFlowReq::Node::Tool::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::ConversationFlowReq::Node::Tool::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Speak < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::ConversationFlowReq::Node::Speak,
                  Telnyx::Internal::AnyHash
                )
              end

            # Caller-supplied unique identifier for this node within the flow.
            sig { returns(String) }
            attr_accessor :id

            # Message delivered to the user verbatim when the flow reaches this node. No LLM
            # turn — the text is spoken/sent exactly as written. `{{variable}}` placeholders
            # are interpolated from the conversation's dynamic variables; an unresolved
            # placeholder renders as an empty string. After delivering, the flow routes via
            # the node's outgoing `llm` / `expression` edges (commonly a single unconditional
            # edge).
            sig { returns(String) }
            attr_accessor :message

            # Optional human-readable label, displayed in authoring UIs.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
            # by the runtime; round-trips so frontends can persist graph layout across
            # reloads.
            sig { returns(T.nilable(Telnyx::AI::NodePosition)) }
            attr_reader :position

            sig { params(position: Telnyx::AI::NodePosition::OrHash).void }
            attr_writer :position

            # Node kind discriminator. Always `speak` for a speak node.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::ConversationFlowReq::Node::Speak::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::AI::ConversationFlowReq::Node::Speak::Type::OrSymbol
              ).void
            end
            attr_writer :type

            # A standalone scripted-message step in a flow, as supplied by clients.
            #
            # Unlike a prompt node, a speak node has no instructions or model — it isn't an
            # LLM turn. Reaching it delivers `message` to the user verbatim (with
            # `{{variable}}` interpolation), then routes via outgoing `llm` / `expression`
            # edges.
            sig do
              params(
                id: String,
                message: String,
                name: String,
                position: Telnyx::AI::NodePosition::OrHash,
                type:
                  Telnyx::AI::ConversationFlowReq::Node::Speak::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Caller-supplied unique identifier for this node within the flow.
              id:,
              # Message delivered to the user verbatim when the flow reaches this node. No LLM
              # turn — the text is spoken/sent exactly as written. `{{variable}}` placeholders
              # are interpolated from the conversation's dynamic variables; an unresolved
              # placeholder renders as an empty string. After delivering, the flow routes via
              # the node's outgoing `llm` / `expression` edges (commonly a single unconditional
              # edge).
              message:,
              # Optional human-readable label, displayed in authoring UIs.
              name: nil,
              # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              # by the runtime; round-trips so frontends can persist graph layout across
              # reloads.
              position: nil,
              # Node kind discriminator. Always `speak` for a speak node.
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  message: String,
                  name: String,
                  position: Telnyx::AI::NodePosition,
                  type:
                    Telnyx::AI::ConversationFlowReq::Node::Speak::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Node kind discriminator. Always `speak` for a speak node.
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::ConversationFlowReq::Node::Speak::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SPEAK =
                T.let(
                  :speak,
                  Telnyx::AI::ConversationFlowReq::Node::Speak::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::ConversationFlowReq::Node::Speak::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[Telnyx::AI::ConversationFlowReq::Node::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
