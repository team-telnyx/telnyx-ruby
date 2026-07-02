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

          sig do
            returns(
              T.nilable(
                T::Array[Telnyx::Models::Storage::Kvs::KeyListResponse::Data]
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::Storage::Kvs::KeyListResponse::Data::OrHash
                ]
            ).void
          end
          attr_writer :data

          sig do
            returns(
              T.nilable(Telnyx::Models::Storage::Kvs::KeyListResponse::Meta)
            )
          end
          attr_reader :meta

          sig do
            params(
              meta: Telnyx::Models::Storage::Kvs::KeyListResponse::Meta::OrHash
            ).void
          end
          attr_writer :meta

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::Storage::Kvs::KeyListResponse::Data::OrHash
                ],
              meta: Telnyx::Models::Storage::Kvs::KeyListResponse::Meta::OrHash,
              record_type: String
            ).returns(T.attached_class)
          end
          def self.new(data: nil, meta: nil, record_type: nil)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[Telnyx::Models::Storage::Kvs::KeyListResponse::Data],
                meta: Telnyx::Models::Storage::Kvs::KeyListResponse::Meta,
                record_type: String
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Storage::Kvs::KeyListResponse::Data,
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
              params(
                key: String,
                size_bytes: Integer,
                updated_at: Time
              ).returns(T.attached_class)
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

          class Meta < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Storage::Kvs::KeyListResponse::Meta,
                  Telnyx::Internal::AnyHash
                )
              end

            # Opaque cursor for the next page; pass it back as the `cursor` query parameter.
            # Omitted when there are no further results.
            sig { returns(T.nilable(String)) }
            attr_reader :cursor

            sig { params(cursor: String).void }
            attr_writer :cursor

            # Whether more results are available on a following page.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_more

            sig { params(has_more: T::Boolean).void }
            attr_writer :has_more

            sig do
              params(cursor: String, has_more: T::Boolean).returns(
                T.attached_class
              )
            end
            def self.new(
              # Opaque cursor for the next page; pass it back as the `cursor` query parameter.
              # Omitted when there are no further results.
              cursor: nil,
              # Whether more results are available on a following page.
              has_more: nil
            )
            end

            sig { override.returns({ cursor: String, has_more: T::Boolean }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
