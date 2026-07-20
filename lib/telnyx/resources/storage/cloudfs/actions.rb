# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      class Cloudfs
        # Manage CloudFS filesystems — JuiceFS-compatible filesystems backed by Telnyx
        # Cloud Storage
        class Actions
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Storage::Cloudfs::ActionRotateMetaTokenParams} for more
          # details.
          #
          # Issues a new metadata access token for the filesystem and returns the full
          # filesystem, including the new `meta_token` and credential-bearing `meta_url`.
          # The previous token stops authenticating immediately; the metadata database and
          # S3 bucket are unchanged. The request takes no body. Allowed while the filesystem
          # is `ready` or `needs_format`; otherwise returns a `409`. Retrying with the same
          # `Idempotency-Key` within 24 hours replays the original response — including the
          # same token — instead of rotating again.
          #
          # @overload rotate_meta_token(id, idempotency_key:, request_options: {})
          #
          # @param id [String] CloudFS filesystem ID
          #
          # @param idempotency_key [String] Unique key that makes the request idempotent (1-255 characters: letters, numbers
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Storage::CloudfsFilesystemResponseWrapper]
          #
          # @see Telnyx::Models::Storage::Cloudfs::ActionRotateMetaTokenParams
          def rotate_meta_token(id, params)
            parsed, options = Telnyx::Storage::Cloudfs::ActionRotateMetaTokenParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["storage/cloudfs/%1$s/actions/rotate-meta-token", id],
              headers: parsed.transform_keys(idempotency_key: "idempotency-key"),
              model: Telnyx::Storage::CloudfsFilesystemResponseWrapper,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
