# typed: strong

module Telnyx
  module Models
    module Storage
      class MigrationCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Storage::MigrationCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Storage::MigrationParams)) }
        attr_reader :data

        sig { params(data: Telnyx::Storage::MigrationParams::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Storage::MigrationParams::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Storage::MigrationParams }) }
        def to_hash
        end
      end
    end
  end
end
