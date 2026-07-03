# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      class Kvs
        # Read and write keys within a KV namespace
        class Keys
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Storage::Kvs::KeyRetrieveParams} for more details.
          #
          # Returns the raw stored value for a key. The response body is the value exactly
          # as it was written; the `Content-Type` header echoes the value's stored content
          # type (defaults to `application/octet-stream`).
          #
          # @overload retrieve(key, id:, request_options: {})
          #
          # @param key [String] Key name. Allowed characters: `a-z A-Z 0-9 - _ / = .`; maximum 256 characters; n
          #
          # @param id [String] KV namespace ID
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see Telnyx::Models::Storage::Kvs::KeyRetrieveParams
          def retrieve(key, params)
            parsed, options = Telnyx::Storage::Kvs::KeyRetrieveParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["storage/kvs/%1$s/keys/%2$s", id, key],
              headers: {"accept" => "application/octet-stream"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Storage::Kvs::KeyUpdateParams} for more details.
          #
          # Creates or replaces the value for a key. The request body is stored verbatim as
          # the value — no base64, no JSON envelope — up to 1 MiB. The request's
          # `Content-Type` header is stored with the value and echoed back on retrieval.
          # Returns `201` when the key is created and `200` when an existing key is updated.
          #
          # @overload update(key, id:, body:, ttl_secs: nil, request_options: {})
          #
          # @param key [String] Path param: Key name. Allowed characters: `a-z A-Z 0-9 - _ / = .`; maximum 256 c
          #
          # @param id [String] Path param: KV namespace ID
          #
          # @param body [Pathname, StringIO, IO, String, Telnyx::FilePart] Body param: Raw value bytes, stored verbatim.
          #
          # @param ttl_secs [Integer] Query param: Time-to-live in seconds. When set, the key expires and is deleted a
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::Storage::Kvs::KeyUpdateParams
          def update(key, params)
            parsed, options = Telnyx::Storage::Kvs::KeyUpdateParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed.except(:body))
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["storage/kvs/%1$s/keys/%2$s", id, key],
              query: query,
              headers: {"content-type" => "application/octet-stream"},
              body: parsed[:body],
              model: NilClass,
              options: options
            )
          end

          # Lists the keys in a namespace. Returns key names and metadata only, never
          # values. Results are paginated with `limit` and an opaque `cursor`.
          #
          # @overload list(id, cursor: nil, limit: nil, prefix: nil, request_options: {})
          #
          # @param id [String] KV namespace ID
          #
          # @param cursor [String] Opaque pagination cursor from a previous response's `meta.cursor`.
          #
          # @param limit [Integer] Maximum number of keys to return. Values above 1000 are treated as 1000.
          #
          # @param prefix [String] Return only keys that start with this prefix.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::CursorFlatPagination<Telnyx::Models::Storage::Kvs::KeyListResponse>]
          #
          # @see Telnyx::Models::Storage::Kvs::KeyListParams
          def list(id, params = {})
            parsed, options = Telnyx::Storage::Kvs::KeyListParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["storage/kvs/%1$s/keys", id],
              query: query,
              page: Telnyx::Internal::CursorFlatPagination,
              model: Telnyx::Models::Storage::Kvs::KeyListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Storage::Kvs::KeyDeleteParams} for more details.
          #
          # Deletes a key. Idempotent: deleting a key that does not exist still succeeds.
          # The namespace itself must exist and be provisioned.
          #
          # @overload delete(key, id:, request_options: {})
          #
          # @param key [String] Key name. Allowed characters: `a-z A-Z 0-9 - _ / = .`; maximum 256 characters; n
          #
          # @param id [String] KV namespace ID
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::Storage::Kvs::KeyDeleteParams
          def delete(key, params)
            parsed, options = Telnyx::Storage::Kvs::KeyDeleteParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["storage/kvs/%1$s/keys/%2$s", id, key],
              model: NilClass,
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
