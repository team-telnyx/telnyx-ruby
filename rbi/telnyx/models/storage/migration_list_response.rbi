# typed: strong

module Telnyx
  module Models
    module Storage
      class MigrationListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Storage::MigrationListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Telnyx::Storage::MigrationParams])) }
        attr_reader :data

        sig do
          params(data: T::Array[Telnyx::Storage::MigrationParams::OrHash]).void
        end
        attr_writer :data

        sig do
          returns(T.nilable(Telnyx::Storage::Buckets::PaginationMetaSimple))
        end
        attr_reader :meta

        sig do
          params(
            meta: Telnyx::Storage::Buckets::PaginationMetaSimple::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::Storage::MigrationParams::OrHash],
            meta: Telnyx::Storage::Buckets::PaginationMetaSimple::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::Storage::MigrationParams],
              meta: Telnyx::Storage::Buckets::PaginationMetaSimple
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
