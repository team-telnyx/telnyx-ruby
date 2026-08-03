# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class ThreadRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailInboxes::ThreadRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::EmailInboxes::InboundThreadDetail) }
        attr_reader :data

        sig do
          params(data: Telnyx::EmailInboxes::InboundThreadDetail::OrHash).void
        end
        attr_writer :data

        sig { returns(Telnyx::EmailInboxes::EmailPaginationMeta) }
        attr_reader :meta

        sig do
          params(meta: Telnyx::EmailInboxes::EmailPaginationMeta::OrHash).void
        end
        attr_writer :meta

        sig do
          params(
            data: Telnyx::EmailInboxes::InboundThreadDetail::OrHash,
            meta: Telnyx::EmailInboxes::EmailPaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data: Telnyx::EmailInboxes::InboundThreadDetail,
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
