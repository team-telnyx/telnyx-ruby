# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class FilterDeleteAllResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailInboxes::FilterDeleteAllResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::EmailInboxes::InboxFilters) }
        attr_reader :data

        sig { params(data: Telnyx::EmailInboxes::InboxFilters::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::EmailInboxes::InboxFilters::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: Telnyx::EmailInboxes::InboxFilters }) }
        def to_hash
        end
      end
    end
  end
end
