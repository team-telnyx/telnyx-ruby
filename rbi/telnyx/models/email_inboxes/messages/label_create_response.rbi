# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        class LabelCreateResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailInboxes::Messages::LabelCreateResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::InboundMessage) }
          attr_reader :data

          sig { params(data: Telnyx::InboundMessage::OrHash).void }
          attr_writer :data

          sig do
            params(data: Telnyx::InboundMessage::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(data:)
          end

          sig { override.returns({ data: Telnyx::InboundMessage }) }
          def to_hash
          end
        end
      end
    end
  end
end
