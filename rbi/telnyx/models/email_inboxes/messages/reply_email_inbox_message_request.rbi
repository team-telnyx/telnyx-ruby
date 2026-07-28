# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        class ReplyEmailInboxMessageRequest < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::EmailInboxes::Messages::ReplyEmailInboxMessageRequest,
                Telnyx::Internal::AnyHash
              )
            end

          # HTML reply body.
          sig { returns(T.nilable(String)) }
          attr_reader :html

          sig { params(html: String).void }
          attr_writer :html

          # Plain-text reply body.
          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          # At least one of `text` or `html` must contain a non-whitespace body. Recipients
          # are derived from the source message; caller-supplied `to`, `cc`, or `bcc` values
          # are ignored.
          sig { params(html: String, text: String).returns(T.attached_class) }
          def self.new(
            # HTML reply body.
            html: nil,
            # Plain-text reply body.
            text: nil
          )
          end

          sig { override.returns({ html: String, text: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
