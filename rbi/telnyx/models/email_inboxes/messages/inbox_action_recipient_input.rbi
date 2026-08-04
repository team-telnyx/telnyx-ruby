# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        # One recipient or a recipient array. Each recipient may be an email string or an
        # object with `email` and optional `name`.
        module InboxActionRecipientInput
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::UnionMember1,
                T::Array[
                  Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::Variants
                ]
              )
            end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::UnionMember1,
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
                Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::Variants
              ]
            )
          end
          def self.variants
          end

          InboxActionEmailAddressInputArray =
            T.let(
              Telnyx::Internal::Type::ArrayOf[
                union:
                  Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput
              ],
              Telnyx::Internal::Type::Converter
            )
        end
      end
    end
  end
end
