# typed: strong

module Telnyx
  module Models
    module MessagingProfiles
      class AutorespConfigListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingProfiles::AutorespConfigListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::MessagingProfiles::AutoRespConfig]) }
        attr_accessor :data

        sig { returns(Telnyx::MessagingPaginationMeta0b38e7044b) }
        attr_reader :meta

        sig do
          params(meta: Telnyx::MessagingPaginationMeta0b38e7044b::OrHash).void
        end
        attr_writer :meta

        # List of Auto-Response Settings
        sig do
          params(
            data: T::Array[Telnyx::MessagingProfiles::AutoRespConfig::OrHash],
            meta: Telnyx::MessagingPaginationMeta0b38e7044b::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::MessagingProfiles::AutoRespConfig],
              meta: Telnyx::MessagingPaginationMeta0b38e7044b
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
