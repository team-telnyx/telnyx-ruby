# frozen_string_literal: true

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

        PROVISIONING = :provisioning
        READY = :ready
        NEEDS_FORMAT = :needs_format
        DELETING = :deleting
        FAILED = :failed
        DELETED = :deleted

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
