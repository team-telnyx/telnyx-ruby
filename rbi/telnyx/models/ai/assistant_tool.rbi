# typed: strong

module Telnyx
  module Models
    module AI
      # The handoff tool allows the assistant to hand off control of the conversation to
      # another AI assistant. By default, this will happen transparently to the end
      # user.
      module AssistantTool
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::AI::InferenceEmbeddingWebhookToolParams,
              Telnyx::AI::RetrievalTool,
              Telnyx::AI::AssistantTool::Handoff,
              Telnyx::AI::HangupTool,
              Telnyx::AI::AssistantTool::Transfer,
              Telnyx::AI::AssistantTool::Refer,
              Telnyx::AI::AssistantTool::SendDtmf,
              Telnyx::AI::AssistantTool::SendMessage
            )
          end

        class Handoff < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantTool::Handoff,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::AI::AssistantTool::Handoff::Handoff) }
          attr_reader :handoff

          sig do
            params(
              handoff: Telnyx::AI::AssistantTool::Handoff::Handoff::OrHash
            ).void
          end
          attr_writer :handoff

          sig { returns(Symbol) }
          attr_accessor :type

          # The handoff tool allows the assistant to hand off control of the conversation to
          # another AI assistant. By default, this will happen transparently to the end
          # user.
          sig do
            params(
              handoff: Telnyx::AI::AssistantTool::Handoff::Handoff::OrHash,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(handoff:, type: :handoff)
          end

          sig do
            override.returns(
              {
                handoff: Telnyx::AI::AssistantTool::Handoff::Handoff,
                type: Symbol
              }
            )
          end
          def to_hash
          end

          class Handoff < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantTool::Handoff::Handoff,
                  Telnyx::Internal::AnyHash
                )
              end

            # List of possible assistants that can receive a handoff.
            sig do
              returns(
                T::Array[
                  Telnyx::AI::AssistantTool::Handoff::Handoff::AIAssistant
                ]
              )
            end
            attr_accessor :ai_assistants

            # With the unified voice mode all assistants share the same voice, making the
            # handoff transparent to the user. With the distinct voice mode all assistants
            # retain their voice configuration, providing the experience of a conference call
            # with a team of assistants.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::OrSymbol
                )
              )
            end
            attr_reader :voice_mode

            sig do
              params(
                voice_mode:
                  Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::OrSymbol
              ).void
            end
            attr_writer :voice_mode

            sig do
              params(
                ai_assistants:
                  T::Array[
                    Telnyx::AI::AssistantTool::Handoff::Handoff::AIAssistant::OrHash
                  ],
                voice_mode:
                  Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # List of possible assistants that can receive a handoff.
              ai_assistants:,
              # With the unified voice mode all assistants share the same voice, making the
              # handoff transparent to the user. With the distinct voice mode all assistants
              # retain their voice configuration, providing the experience of a conference call
              # with a team of assistants.
              voice_mode: nil
            )
            end

            sig do
              override.returns(
                {
                  ai_assistants:
                    T::Array[
                      Telnyx::AI::AssistantTool::Handoff::Handoff::AIAssistant
                    ],
                  voice_mode:
                    Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::OrSymbol
                }
              )
            end
            def to_hash
            end

            class AIAssistant < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Handoff::Handoff::AIAssistant,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The ID of the assistant to hand off to.
              sig { returns(String) }
              attr_accessor :id

              # Helpful name for giving context on when to handoff to the assistant.
              sig { returns(String) }
              attr_accessor :name

              sig { params(id: String, name: String).returns(T.attached_class) }
              def self.new(
                # The ID of the assistant to hand off to.
                id:,
                # Helpful name for giving context on when to handoff to the assistant.
                name:
              )
              end

              sig { override.returns({ id: String, name: String }) }
              def to_hash
              end
            end

            # With the unified voice mode all assistants share the same voice, making the
            # handoff transparent to the user. With the distinct voice mode all assistants
            # retain their voice configuration, providing the experience of a conference call
            # with a team of assistants.
            module VoiceMode
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNIFIED =
                T.let(
                  :unified,
                  Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::TaggedSymbol
                )
              DISTINCT =
                T.let(
                  :distinct,
                  Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Transfer < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantTool::Transfer,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::AI::AssistantTool::Transfer::Transfer) }
          attr_reader :transfer

          sig do
            params(
              transfer: Telnyx::AI::AssistantTool::Transfer::Transfer::OrHash
            ).void
          end
          attr_writer :transfer

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              transfer: Telnyx::AI::AssistantTool::Transfer::Transfer::OrHash,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(transfer:, type: :transfer)
          end

          sig do
            override.returns(
              {
                transfer: Telnyx::AI::AssistantTool::Transfer::Transfer,
                type: Symbol
              }
            )
          end
          def to_hash
          end

          class Transfer < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantTool::Transfer::Transfer,
                  Telnyx::Internal::AnyHash
                )
              end

            # Number or SIP URI placing the call.
            sig { returns(String) }
            attr_accessor :from

            # The different possible targets of the transfer. The assistant will be able to
            # choose one of the targets to transfer the call to.
            sig do
              returns(
                T::Array[Telnyx::AI::AssistantTool::Transfer::Transfer::Target]
              )
            end
            attr_accessor :targets

            # Custom headers to be added to the SIP INVITE for the transfer command.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::AI::AssistantTool::Transfer::Transfer::CustomHeader
                  ]
                )
              )
            end
            attr_reader :custom_headers

            sig do
              params(
                custom_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Transfer::Transfer::CustomHeader::OrHash
                  ]
              ).void
            end
            attr_writer :custom_headers

            # Natural language instructions for your agent for how to provide context for the
            # transfer recipient.
            sig { returns(T.nilable(String)) }
            attr_reader :warm_transfer_instructions

            sig { params(warm_transfer_instructions: String).void }
            attr_writer :warm_transfer_instructions

            sig do
              params(
                from: String,
                targets:
                  T::Array[
                    Telnyx::AI::AssistantTool::Transfer::Transfer::Target::OrHash
                  ],
                custom_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Transfer::Transfer::CustomHeader::OrHash
                  ],
                warm_transfer_instructions: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Number or SIP URI placing the call.
              from:,
              # The different possible targets of the transfer. The assistant will be able to
              # choose one of the targets to transfer the call to.
              targets:,
              # Custom headers to be added to the SIP INVITE for the transfer command.
              custom_headers: nil,
              # Natural language instructions for your agent for how to provide context for the
              # transfer recipient.
              warm_transfer_instructions: nil
            )
            end

            sig do
              override.returns(
                {
                  from: String,
                  targets:
                    T::Array[
                      Telnyx::AI::AssistantTool::Transfer::Transfer::Target
                    ],
                  custom_headers:
                    T::Array[
                      Telnyx::AI::AssistantTool::Transfer::Transfer::CustomHeader
                    ],
                  warm_transfer_instructions: String
                }
              )
            end
            def to_hash
            end

            class Target < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Transfer::Transfer::Target,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The name of the target.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # The destination number or SIP URI of the call.
              sig { returns(T.nilable(String)) }
              attr_reader :to

              sig { params(to: String).void }
              attr_writer :to

              sig { params(name: String, to: String).returns(T.attached_class) }
              def self.new(
                # The name of the target.
                name: nil,
                # The destination number or SIP URI of the call.
                to: nil
              )
              end

              sig { override.returns({ name: String, to: String }) }
              def to_hash
              end
            end

            class CustomHeader < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Transfer::Transfer::CustomHeader,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # The value of the header. Note that we support mustache templating for the value.
              # For example you can use
              # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
              # the integration secret.
              sig { returns(T.nilable(String)) }
              attr_reader :value

              sig { params(value: String).void }
              attr_writer :value

              sig do
                params(name: String, value: String).returns(T.attached_class)
              end
              def self.new(
                name: nil,
                # The value of the header. Note that we support mustache templating for the value.
                # For example you can use
                # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
                # the integration secret.
                value: nil
              )
              end

              sig { override.returns({ name: String, value: String }) }
              def to_hash
              end
            end
          end
        end

        class Refer < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Telnyx::AI::AssistantTool::Refer, Telnyx::Internal::AnyHash)
            end

          sig { returns(Telnyx::AI::AssistantTool::Refer::Refer) }
          attr_reader :refer

          sig do
            params(refer: Telnyx::AI::AssistantTool::Refer::Refer::OrHash).void
          end
          attr_writer :refer

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              refer: Telnyx::AI::AssistantTool::Refer::Refer::OrHash,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(refer:, type: :refer)
          end

          sig do
            override.returns(
              { refer: Telnyx::AI::AssistantTool::Refer::Refer, type: Symbol }
            )
          end
          def to_hash
          end

          class Refer < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantTool::Refer::Refer,
                  Telnyx::Internal::AnyHash
                )
              end

            # The different possible targets of the SIP refer. The assistant will be able to
            # choose one of the targets to refer the call to.
            sig do
              returns(T::Array[Telnyx::AI::AssistantTool::Refer::Refer::Target])
            end
            attr_accessor :targets

            # Custom headers to be added to the SIP REFER.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::CustomHeader
                  ]
                )
              )
            end
            attr_reader :custom_headers

            sig do
              params(
                custom_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::CustomHeader::OrHash
                  ]
              ).void
            end
            attr_writer :custom_headers

            # SIP headers to be added to the SIP REFER. Currently only User-to-User and
            # Diversion headers are supported.
            sig do
              returns(
                T.nilable(
                  T::Array[Telnyx::AI::AssistantTool::Refer::Refer::SipHeader]
                )
              )
            end
            attr_reader :sip_headers

            sig do
              params(
                sip_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::OrHash
                  ]
              ).void
            end
            attr_writer :sip_headers

            sig do
              params(
                targets:
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::Target::OrHash
                  ],
                custom_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::CustomHeader::OrHash
                  ],
                sip_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The different possible targets of the SIP refer. The assistant will be able to
              # choose one of the targets to refer the call to.
              targets:,
              # Custom headers to be added to the SIP REFER.
              custom_headers: nil,
              # SIP headers to be added to the SIP REFER. Currently only User-to-User and
              # Diversion headers are supported.
              sip_headers: nil
            )
            end

            sig do
              override.returns(
                {
                  targets:
                    T::Array[Telnyx::AI::AssistantTool::Refer::Refer::Target],
                  custom_headers:
                    T::Array[
                      Telnyx::AI::AssistantTool::Refer::Refer::CustomHeader
                    ],
                  sip_headers:
                    T::Array[Telnyx::AI::AssistantTool::Refer::Refer::SipHeader]
                }
              )
            end
            def to_hash
            end

            class Target < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Refer::Refer::Target,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The name of the target.
              sig { returns(String) }
              attr_accessor :name

              # The SIP URI to which the call will be referred.
              sig { returns(String) }
              attr_accessor :sip_address

              # SIP Authentication password used for SIP challenges.
              sig { returns(T.nilable(String)) }
              attr_reader :sip_auth_password

              sig { params(sip_auth_password: String).void }
              attr_writer :sip_auth_password

              # SIP Authentication username used for SIP challenges.
              sig { returns(T.nilable(String)) }
              attr_reader :sip_auth_username

              sig { params(sip_auth_username: String).void }
              attr_writer :sip_auth_username

              sig do
                params(
                  name: String,
                  sip_address: String,
                  sip_auth_password: String,
                  sip_auth_username: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The name of the target.
                name:,
                # The SIP URI to which the call will be referred.
                sip_address:,
                # SIP Authentication password used for SIP challenges.
                sip_auth_password: nil,
                # SIP Authentication username used for SIP challenges.
                sip_auth_username: nil
              )
              end

              sig do
                override.returns(
                  {
                    name: String,
                    sip_address: String,
                    sip_auth_password: String,
                    sip_auth_username: String
                  }
                )
              end
              def to_hash
              end
            end

            class CustomHeader < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Refer::Refer::CustomHeader,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # The value of the header. Note that we support mustache templating for the value.
              # For example you can use
              # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
              # the integration secret.
              sig { returns(T.nilable(String)) }
              attr_reader :value

              sig { params(value: String).void }
              attr_writer :value

              sig do
                params(name: String, value: String).returns(T.attached_class)
              end
              def self.new(
                name: nil,
                # The value of the header. Note that we support mustache templating for the value.
                # For example you can use
                # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
                # the integration secret.
                value: nil
              )
              end

              sig { override.returns({ name: String, value: String }) }
              def to_hash
              end
            end

            class SipHeader < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::OrSymbol
                  )
                )
              end
              attr_reader :name

              sig do
                params(
                  name:
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::OrSymbol
                ).void
              end
              attr_writer :name

              # The value of the header. Note that we support mustache templating for the value.
              # For example you can use
              # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
              # the integration secret.
              sig { returns(T.nilable(String)) }
              attr_reader :value

              sig { params(value: String).void }
              attr_writer :value

              sig do
                params(
                  name:
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::OrSymbol,
                  value: String
                ).returns(T.attached_class)
              end
              def self.new(
                name: nil,
                # The value of the header. Note that we support mustache templating for the value.
                # For example you can use
                # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
                # the integration secret.
                value: nil
              )
              end

              sig do
                override.returns(
                  {
                    name:
                      Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::OrSymbol,
                    value: String
                  }
                )
              end
              def to_hash
              end

              module Name
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USER_TO_USER =
                  T.let(
                    :"User-to-User",
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::TaggedSymbol
                  )
                DIVERSION =
                  T.let(
                    :Diversion,
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        class SendDtmf < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantTool::SendDtmf,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :send_dtmf

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              send_dtmf: T::Hash[Symbol, T.anything],
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(send_dtmf:, type: :send_dtmf)
          end

          sig do
            override.returns(
              { send_dtmf: T::Hash[Symbol, T.anything], type: Symbol }
            )
          end
          def to_hash
          end
        end

        class SendMessage < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantTool::SendMessage,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :send_message

          sig { returns(Symbol) }
          attr_accessor :type

          # The send_message tool allows the assistant to send SMS or MMS messages to the
          # end user. The 'to' and 'from' addresses are automatically determined from the
          # conversation context, and the message text is generated by the assistant.
          sig do
            params(
              send_message: T::Hash[Symbol, T.anything],
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(send_message:, type: :send_message)
          end

          sig do
            override.returns(
              { send_message: T::Hash[Symbol, T.anything], type: Symbol }
            )
          end
          def to_hash
          end
        end

        sig { override.returns(T::Array[Telnyx::AI::AssistantTool::Variants]) }
        def self.variants
        end
      end
    end
  end
end
