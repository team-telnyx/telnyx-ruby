# typed: strong

module Telnyx
  module Models
    module Calls
      class DeveloperMessage < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::DeveloperMessage, Telnyx::Internal::AnyHash)
          end

        # The contents of the developer message.
        sig { returns(String) }
        attr_accessor :content

        # The role of the messages author, in this case developer.
        sig { returns(Telnyx::Calls::DeveloperMessage::Role::OrSymbol) }
        attr_accessor :role

        # Metadata to add to the message
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        # Developer-provided instructions that the model should follow, regardless of
        # messages sent by the user.
        sig do
          params(
            content: String,
            role: Telnyx::Calls::DeveloperMessage::Role::OrSymbol,
            metadata: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          # The contents of the developer message.
          content:,
          # The role of the messages author, in this case developer.
          role:,
          # Metadata to add to the message
          metadata: nil
        )
        end

        sig do
          override.returns(
            {
              content: String,
              role: Telnyx::Calls::DeveloperMessage::Role::OrSymbol,
              metadata: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end

        # The role of the messages author, in this case developer.
        module Role
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::DeveloperMessage::Role)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEVELOPER =
            T.let(
              :developer,
              Telnyx::Calls::DeveloperMessage::Role::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Calls::DeveloperMessage::Role::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
