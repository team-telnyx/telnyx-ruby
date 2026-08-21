# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        # Email address accepted by inbox message actions, as a string or an object with
        # `email` and optional `name`.
        module InboxActionEmailAddressInput
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress
              )
            end

          class InboxRecipientAddress < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :email

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(email: String, name: String).returns(T.attached_class)
            end
            def self.new(email:, name: nil)
            end

            sig { override.returns({ email: String, name: String }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
