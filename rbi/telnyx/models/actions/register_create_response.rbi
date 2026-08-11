# typed: strong

module Telnyx
  module Models
    module Actions
      class RegisterCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Actions::RegisterCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Successfully registered SIM cards.
        sig { returns(T.nilable(T::Array[Telnyx::SimpleSimCard])) }
        attr_reader :data

        sig { params(data: T::Array[Telnyx::SimpleSimCard::OrHash]).void }
        attr_writer :data

        sig do
          returns(T.nilable(T::Array[Telnyx::Actions::WirelessErrorC5290d5308]))
        end
        attr_reader :errors

        sig do
          params(
            errors: T::Array[Telnyx::Actions::WirelessErrorC5290d5308::OrHash]
          ).void
        end
        attr_writer :errors

        sig do
          params(
            data: T::Array[Telnyx::SimpleSimCard::OrHash],
            errors: T::Array[Telnyx::Actions::WirelessErrorC5290d5308::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Successfully registered SIM cards.
          data: nil,
          errors: nil
        )
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::SimpleSimCard],
              errors: T::Array[Telnyx::Actions::WirelessErrorC5290d5308]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
