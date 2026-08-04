# typed: strong

module Telnyx
  module Models
    module EmailMessages
      class RecipientRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailMessages::RecipientRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::EmailMessages::EmailRecipient) }
        attr_reader :data

        sig { params(data: Telnyx::EmailMessages::EmailRecipient::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::EmailMessages::EmailRecipient::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig do
          override.returns({ data: Telnyx::EmailMessages::EmailRecipient })
        end
        def to_hash
        end
      end
    end
  end
end
