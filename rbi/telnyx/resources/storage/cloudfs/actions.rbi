# typed: strong

module Telnyx
  module Resources
    class Storage
      class Cloudfs
        # Manage CloudFS filesystems — JuiceFS-compatible filesystems backed by Telnyx
        # Cloud Storage
        class Actions
          # Issues a new metadata access token for the filesystem and returns the full
          # filesystem, including the new `meta_token` and credential-bearing `meta_url`.
          # The previous token stops authenticating immediately; the metadata database and
          # S3 bucket are unchanged. The request takes no body. Allowed while the filesystem
          # is `ready` or `needs_format`; otherwise returns a `409`. Retrying with the same
          # `Idempotency-Key` within 24 hours replays the original response — including the
          # same token — instead of rotating again.
          sig do
            params(
              id: String,
              idempotency_key: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Storage::CloudfsFilesystemResponseWrapper)
          end
          def rotate_meta_token(
            # CloudFS filesystem ID
            id,
            # Unique key that makes the request idempotent (1-255 characters: letters,
            # numbers, `_`, and `-`). Retrying with the same key within 24 hours replays the
            # original response (marked with an `Idempotent-Replayed: true` header) instead of
            # repeating the action. Reusing a key with a different request returns a `422`;
            # sending a key while the original request is still being processed returns a
            # `409`.
            idempotency_key:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
