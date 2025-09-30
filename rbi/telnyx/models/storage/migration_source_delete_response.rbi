# typed: strong

module Telnyx
  module Models
    module Storage
      class MigrationSourceDeleteResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Storage::MigrationSourceDeleteResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Storage::MigrationSourceParams)) }
        attr_reader :data

        sig do
          params(data: Telnyx::Storage::MigrationSourceParams::OrHash).void
        end
        attr_writer :data

        sig do
          params(data: Telnyx::Storage::MigrationSourceParams::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: Telnyx::Storage::MigrationSourceParams })
        end
        def to_hash
        end
      end
    end
  end
end
