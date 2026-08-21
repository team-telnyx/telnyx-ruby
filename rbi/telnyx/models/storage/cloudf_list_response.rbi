# typed: strong

module Telnyx
  module Models
    module Storage
      class CloudfListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Storage::CloudfListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig { returns(T.nilable(String)) }
        attr_reader :region

        sig { params(region: String).void }
        attr_writer :region

        # Name of the bucket that stores this filesystem's data. Created during
        # provisioning.
        sig { returns(T.nilable(String)) }
        attr_reader :s3_bucket

        sig { params(s3_bucket: String).void }
        attr_writer :s3_bucket

        # URL of the Telnyx Cloud Storage endpoint backing this filesystem.
        sig { returns(T.nilable(String)) }
        attr_reader :s3_endpoint

        sig { params(s3_endpoint: String).void }
        attr_writer :s3_endpoint

        # Lifecycle status of the filesystem. `ready` means it is fully provisioned and
        # usable. `needs_format` means the storage bucket and metadata database were
        # provisioned but the filesystem has not yet been formatted — run `juicefs format`
        # with the filesystem's `meta_url` before mounting. `failed` means the last
        # lifecycle action failed — see the filesystem's `error` message. `deleted`
        # appears only in the delete response: deleted filesystems are excluded from list
        # results and return a `404` on retrieval.
        sig do
          returns(
            T.nilable(Telnyx::Storage::CloudfsFilesystemStatus::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::Storage::CloudfsFilesystemStatus::OrSymbol
          ).void
        end
        attr_writer :status

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # A CloudFS filesystem as returned in list results. Connection details
        # (`meta_url`, `meta_token`) are omitted — retrieve the filesystem by ID for its
        # redacted `meta_url`.
        sig do
          params(
            id: String,
            created_at: Time,
            name: String,
            record_type: String,
            region: String,
            s3_bucket: String,
            s3_endpoint: String,
            status: Telnyx::Storage::CloudfsFilesystemStatus::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          created_at: nil,
          name: nil,
          record_type: nil,
          region: nil,
          # Name of the bucket that stores this filesystem's data. Created during
          # provisioning.
          s3_bucket: nil,
          # URL of the Telnyx Cloud Storage endpoint backing this filesystem.
          s3_endpoint: nil,
          # Lifecycle status of the filesystem. `ready` means it is fully provisioned and
          # usable. `needs_format` means the storage bucket and metadata database were
          # provisioned but the filesystem has not yet been formatted — run `juicefs format`
          # with the filesystem's `meta_url` before mounting. `failed` means the last
          # lifecycle action failed — see the filesystem's `error` message. `deleted`
          # appears only in the delete response: deleted filesystems are excluded from list
          # results and return a `404` on retrieval.
          status: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              name: String,
              record_type: String,
              region: String,
              s3_bucket: String,
              s3_endpoint: String,
              status: Telnyx::Storage::CloudfsFilesystemStatus::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
