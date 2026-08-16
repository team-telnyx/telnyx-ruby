# typed: strong

module Telnyx
  module Models
    module Storage
      class SqlDatabaseResponseWrapper < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Storage::SqlDatabaseResponseWrapper,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Storage::SqlDatabase)) }
        attr_reader :data

        sig { params(data: Telnyx::Storage::SqlDatabase::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Storage::SqlDatabase::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Storage::SqlDatabase }) }
        def to_hash
        end
      end
    end
  end
end
