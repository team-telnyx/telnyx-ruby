# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class EmailDraftResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::EmailDraftResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # An unsent, mutable draft message belonging to an inbox.
        sig { returns(Telnyx::EmailInboxes::EmailDraft) }
        attr_reader :data

        sig { params(data: Telnyx::EmailInboxes::EmailDraft::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::EmailInboxes::EmailDraft::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # An unsent, mutable draft message belonging to an inbox.
          data:
        )
        end

        sig { override.returns({ data: Telnyx::EmailInboxes::EmailDraft }) }
        def to_hash
        end
      end
    end
  end
end
