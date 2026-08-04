# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        class ActionReplyAllParams < Telnyx::Models::EmailInboxes::Messages::ReplyEmailInboxMessageRequest
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::EmailInboxes::Messages::ActionReplyAllParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :inbox_id

          sig { returns(String) }
          attr_accessor :message_id

          sig do
            params(
              inbox_id: String,
              message_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(inbox_id:, message_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                inbox_id: String,
                message_id: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
