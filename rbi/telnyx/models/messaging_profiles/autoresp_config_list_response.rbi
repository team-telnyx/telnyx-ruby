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

        sig { returns(Telnyx::PaginationMeta) }
        attr_reader :meta

        sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
        attr_writer :meta

        # List of Auto-Response Settings
        sig do
          params(
            data: T::Array[Telnyx::MessagingProfiles::AutoRespConfig::OrHash],
            meta: Telnyx::PaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::MessagingProfiles::AutoRespConfig],
              meta: Telnyx::PaginationMeta
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
