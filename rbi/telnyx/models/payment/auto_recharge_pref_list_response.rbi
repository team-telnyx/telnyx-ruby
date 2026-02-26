# typed: strong

module Telnyx
  module Models
    module Payment
      class AutoRechargePrefListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Payment::AutoRechargePrefListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Payment::AutoRechargePref)) }
        attr_reader :data

        sig { params(data: Telnyx::Payment::AutoRechargePref::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Payment::AutoRechargePref::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Payment::AutoRechargePref }) }
        def to_hash
        end
      end
    end
  end
end
