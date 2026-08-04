# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class InboundThreadDetail < Telnyx::Models::EmailInboxes::InboundThread
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::InboundThreadDetail,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::EmailInboxes::ThreadMessage]) }
        attr_accessor :messages

        sig do
          params(
            messages: T::Array[Telnyx::EmailInboxes::ThreadMessage::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(messages:)
        end

        sig do
          override.returns(
            { messages: T::Array[Telnyx::EmailInboxes::ThreadMessage] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
