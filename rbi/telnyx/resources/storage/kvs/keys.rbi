# typed: strong

module Telnyx
  module Resources
    class Storage
      class Kvs
        # Read and write keys within a KV namespace
        class Keys
          # Returns the raw stored value for a key. The response body is the value exactly
          # as it was written; the `Content-Type` header echoes the value's stored content
          # type (defaults to `application/octet-stream`).
          sig do
            params(
              key: String,
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def retrieve(
            # Key name. Allowed characters: `a-z A-Z 0-9 - _ / = .`; maximum 256 characters;
            # names starting with `_` are reserved for system use. May contain `/`; URL-encode
            # it so the whole string is treated as one key (for example `user/1` ->
            # `user%2F1`).
            key,
            # KV namespace ID
            id:,
            request_options: {}
          )
          end

          # Creates or replaces the value for a key. The request body is stored verbatim as
          # the value — no base64, no JSON envelope — up to 1 MiB. The request's
          # `Content-Type` header is stored with the value and echoed back on retrieval.
          # Returns `201` when the key is created and `200` when an existing key is updated.
          sig do
            params(
              key: String,
              id: String,
              body: Telnyx::Internal::FileInput,
              ttl_secs: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def update(
            # Path param: Key name. Allowed characters: `a-z A-Z 0-9 - _ / = .`; maximum 256
            # characters; names starting with `_` are reserved for system use. May contain
            # `/`; URL-encode it so the whole string is treated as one key (for example
            # `user/1` -> `user%2F1`).
            key,
            # Path param: KV namespace ID
            id:,
            # Body param: Raw value bytes, stored verbatim.
            body:,
            # Query param: Time-to-live in seconds. When set, the key expires and is deleted
            # after this duration. Requires a namespace provisioned with TTL support;
            # namespaces without it return a `409`.
            ttl_secs: nil,
            request_options: {}
          )
          end

          # Lists the keys in a namespace. Returns key names and metadata only, never
          # values. Results are paginated with `limit` and an opaque `cursor`.
          sig do
            params(
              id: String,
              cursor: String,
              limit: Integer,
              prefix: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Storage::Kvs::KeyListResponse)
          end
          def list(
            # KV namespace ID
            id,
            # Opaque pagination cursor from a previous response's `meta.cursor`.
            cursor: nil,
            # Maximum number of keys to return. Values above 1000 are treated as 1000.
            limit: nil,
            # Return only keys that start with this prefix.
            prefix: nil,
            request_options: {}
          )
          end

          # Deletes a key. Idempotent: deleting a key that does not exist still succeeds.
          # The namespace itself must exist and be provisioned.
          sig do
            params(
              key: String,
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Key name. Allowed characters: `a-z A-Z 0-9 - _ / = .`; maximum 256 characters;
            # names starting with `_` are reserved for system use. May contain `/`; URL-encode
            # it so the whole string is treated as one key (for example `user/1` ->
            # `user%2F1`).
            key,
            # KV namespace ID
            id:,
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
