# typed: strong

module Telnyx
  module Models
    module Storage
      module Kvs
        class KeyListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Storage::Kvs::KeyListParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Opaque pagination cursor from a previous response's `meta.cursor`.
          sig { returns(T.nilable(String)) }
          attr_reader :cursor

          sig { params(cursor: String).void }
          attr_writer :cursor

          # Maximum number of keys to return. Values above 1000 are treated as 1000.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Return only keys that start with this prefix.
          sig { returns(T.nilable(String)) }
          attr_reader :prefix

          sig { params(prefix: String).void }
          attr_writer :prefix

          sig do
            params(
              id: String,
              cursor: String,
              limit: Integer,
              prefix: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Opaque pagination cursor from a previous response's `meta.cursor`.
            cursor: nil,
            # Maximum number of keys to return. Values above 1000 are treated as 1000.
            limit: nil,
            # Return only keys that start with this prefix.
            prefix: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                cursor: String,
                limit: Integer,
                prefix: String,
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
