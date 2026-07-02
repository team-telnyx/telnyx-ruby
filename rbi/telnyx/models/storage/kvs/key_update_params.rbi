# typed: strong

module Telnyx
  module Models
    module Storage
      module Kvs
        class KeyUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Storage::Kvs::KeyUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :key

          # Raw value bytes, stored verbatim.
          sig { returns(Telnyx::Internal::FileInput) }
          attr_accessor :body

          # Time-to-live in seconds. When set, the key expires and is deleted after this
          # duration. Requires a namespace provisioned with TTL support; namespaces without
          # it return a `409`.
          sig { returns(T.nilable(Integer)) }
          attr_reader :ttl_secs

          sig { params(ttl_secs: Integer).void }
          attr_writer :ttl_secs

          sig do
            params(
              id: String,
              key: String,
              body: Telnyx::Internal::FileInput,
              ttl_secs: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            key:,
            # Raw value bytes, stored verbatim.
            body:,
            # Time-to-live in seconds. When set, the key expires and is deleted after this
            # duration. Requires a namespace provisioned with TTL support; namespaces without
            # it return a `409`.
            ttl_secs: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                key: String,
                body: Telnyx::Internal::FileInput,
                ttl_secs: Integer,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
