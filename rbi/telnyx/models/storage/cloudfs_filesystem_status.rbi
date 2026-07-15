# typed: strong

module Telnyx
  module Models
    module Storage
      # Lifecycle status of the filesystem. `ready` means it is fully provisioned and
      # usable. `needs_format` means the storage bucket and metadata database were
      # provisioned but the filesystem has not yet been formatted — run `juicefs format`
      # with the filesystem's `meta_url` before mounting. `failed` means the last
      # lifecycle action failed — see the filesystem's `error` message. `deleted`
      # appears only in the delete response: deleted filesystems are excluded from list
      # results and return a `404` on retrieval.
      module CloudfsFilesystemStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Storage::CloudfsFilesystemStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROVISIONING =
          T.let(
            :provisioning,
            Telnyx::Storage::CloudfsFilesystemStatus::TaggedSymbol
          )
        READY =
          T.let(:ready, Telnyx::Storage::CloudfsFilesystemStatus::TaggedSymbol)
        NEEDS_FORMAT =
          T.let(
            :needs_format,
            Telnyx::Storage::CloudfsFilesystemStatus::TaggedSymbol
          )
        DELETING =
          T.let(
            :deleting,
            Telnyx::Storage::CloudfsFilesystemStatus::TaggedSymbol
          )
        FAILED =
          T.let(:failed, Telnyx::Storage::CloudfsFilesystemStatus::TaggedSymbol)
        DELETED =
          T.let(
            :deleted,
            Telnyx::Storage::CloudfsFilesystemStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::Storage::CloudfsFilesystemStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
