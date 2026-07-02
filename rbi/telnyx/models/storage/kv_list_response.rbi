# typed: strong

module Telnyx
  module Models
    module Storage
      class KvListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Storage::KvListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # Provisioning status. A namespace is usable once `status` is `provision_ok`. Once
        # deletion completes, the namespace no longer appears in the API.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::Storage::KvListResponse::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::Models::Storage::KvListResponse::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            name: String,
            record_type: String,
            status: Telnyx::Models::Storage::KvListResponse::Status::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          created_at: nil,
          name: nil,
          record_type: nil,
          # Provisioning status. A namespace is usable once `status` is `provision_ok`. Once
          # deletion completes, the namespace no longer appears in the API.
          status: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              name: String,
              record_type: String,
              status:
                Telnyx::Models::Storage::KvListResponse::Status::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Provisioning status. A namespace is usable once `status` is `provision_ok`. Once
        # deletion completes, the namespace no longer appears in the API.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::Storage::KvListResponse::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Models::Storage::KvListResponse::Status::TaggedSymbol
            )
          PROVISION_OK =
            T.let(
              :provision_ok,
              Telnyx::Models::Storage::KvListResponse::Status::TaggedSymbol
            )
          PROVISION_FAILED =
            T.let(
              :provision_failed,
              Telnyx::Models::Storage::KvListResponse::Status::TaggedSymbol
            )
          DELETING =
            T.let(
              :deleting,
              Telnyx::Models::Storage::KvListResponse::Status::TaggedSymbol
            )
          DELETE_FAILED =
            T.let(
              :delete_failed,
              Telnyx::Models::Storage::KvListResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Storage::KvListResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
