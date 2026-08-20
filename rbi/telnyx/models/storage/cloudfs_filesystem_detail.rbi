# typed: strong

module Telnyx
  module Models
    module Storage
      class CloudfsFilesystemDetail < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Storage::CloudfsFilesystemDetail,
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

        # Explanation of the most recent failed lifecycle action. Present only when the
        # filesystem is in a `failed` state.
        sig { returns(T.nilable(String)) }
        attr_reader :error

        sig { params(error: String).void }
        attr_writer :error

        # PostgreSQL connection URL for the filesystem's metadata database, without the
        # credential. Combine it with your stored metadata token, or issue a new token
        # with rotate-meta-token.
        sig { returns(T.nilable(String)) }
        attr_reader :meta_url

        sig { params(meta_url: String).void }
        attr_writer :meta_url

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

        # A CloudFS filesystem as returned by get, update, and delete. `meta_url` omits
        # the credential and there is no `meta_token` field — the token is only returned
        # by create and rotate-meta-token.
        sig do
          params(
            id: String,
            created_at: Time,
            error: String,
            meta_url: String,
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
          # Explanation of the most recent failed lifecycle action. Present only when the
          # filesystem is in a `failed` state.
          error: nil,
          # PostgreSQL connection URL for the filesystem's metadata database, without the
          # credential. Combine it with your stored metadata token, or issue a new token
          # with rotate-meta-token.
          meta_url: nil,
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
              error: String,
              meta_url: String,
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
