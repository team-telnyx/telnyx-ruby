# typed: strong

module Telnyx
  module Models
    module Storage
      module Kvs
        class KeyListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Storage::Kvs::KeyListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :key

          sig { params(key: String).void }
          attr_writer :key

          # Size of the stored value in bytes.
          sig { returns(T.nilable(Integer)) }
          attr_reader :size_bytes

          sig { params(size_bytes: Integer).void }
          attr_writer :size_bytes

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(key: String, size_bytes: Integer, updated_at: Time).returns(
              T.attached_class
            )
          end
          def self.new(
            key: nil,
            # Size of the stored value in bytes.
            size_bytes: nil,
            updated_at: nil
          )
          end

          sig do
            override.returns(
              { key: String, size_bytes: Integer, updated_at: Time }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
