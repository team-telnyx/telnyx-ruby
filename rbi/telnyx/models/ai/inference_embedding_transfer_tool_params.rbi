# typed: strong

module Telnyx
  module Models
    module AI
      class InferenceEmbeddingTransferToolParams < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::InferenceEmbeddingTransferToolParams,
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
            T::Array[Telnyx::AI::InferenceEmbeddingTransferToolParams::Target]
          )
        end
        attr_accessor :targets

        # Custom headers to be added to the SIP INVITE for the transfer command.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::AI::InferenceEmbeddingTransferToolParams::CustomHeader
              ]
            )
          )
        end
        attr_reader :custom_headers

        sig do
          params(
            custom_headers:
              T::Array[
                Telnyx::AI::InferenceEmbeddingTransferToolParams::CustomHeader::OrHash
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
                Telnyx::AI::InferenceEmbeddingTransferToolParams::Target::OrHash
              ],
            custom_headers:
              T::Array[
                Telnyx::AI::InferenceEmbeddingTransferToolParams::CustomHeader::OrHash
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
                  Telnyx::AI::InferenceEmbeddingTransferToolParams::Target
                ],
              custom_headers:
                T::Array[
                  Telnyx::AI::InferenceEmbeddingTransferToolParams::CustomHeader
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
                Telnyx::AI::InferenceEmbeddingTransferToolParams::Target,
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
                Telnyx::AI::InferenceEmbeddingTransferToolParams::CustomHeader,
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

          sig { params(name: String, value: String).returns(T.attached_class) }
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
  end
end
