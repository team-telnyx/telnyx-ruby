# typed: strong

module Telnyx
  module Models
    module AI
      class IntegrationListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::IntegrationListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::AI::Integration]) }
        attr_accessor :data

        sig do
          params(data: T::Array[Telnyx::AI::Integration::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: T::Array[Telnyx::AI::Integration] }) }
        def to_hash
        end
      end
    end
  end
end
