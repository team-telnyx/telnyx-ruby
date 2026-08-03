# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class MessageListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailInboxes::MessageListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::InboundMessage]) }
        attr_accessor :data

        sig { returns(Telnyx::EmailInboxes::EmailPaginationMeta) }
        attr_reader :meta

        sig do
          params(meta: Telnyx::EmailInboxes::EmailPaginationMeta::OrHash).void
        end
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::InboundMessage::OrHash],
            meta: Telnyx::EmailInboxes::EmailPaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::InboundMessage],
              meta: Telnyx::EmailInboxes::EmailPaginationMeta
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
