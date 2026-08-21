# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class EmailMessageResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::EmailMessageResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::EmailInboxes::EmailMessage) }
        attr_reader :data

        sig { params(data: Telnyx::EmailInboxes::EmailMessage::OrHash).void }
        attr_writer :data

        # Recipients removed by suppression checks when at least one recipient remains and
        # the message is accepted.
        sig { returns(T.nilable(T::Array[Telnyx::SuppressedRecipient])) }
        attr_reader :suppressed

        sig do
          params(suppressed: T::Array[Telnyx::SuppressedRecipient::OrHash]).void
        end
        attr_writer :suppressed

        sig do
          params(
            data: Telnyx::EmailInboxes::EmailMessage::OrHash,
            suppressed: T::Array[Telnyx::SuppressedRecipient::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          # Recipients removed by suppression checks when at least one recipient remains and
          # the message is accepted.
          suppressed: nil
        )
        end

        sig do
          override.returns(
            {
              data: Telnyx::EmailInboxes::EmailMessage,
              suppressed: T::Array[Telnyx::SuppressedRecipient]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
