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

        sig { returns(T.nilable(T::Array[Telnyx::WirelessError])) }
        attr_reader :errors

        sig { params(errors: T::Array[Telnyx::WirelessError::OrHash]).void }
        attr_writer :errors

        sig do
          params(
            data: T::Array[Telnyx::SimpleSimCard::OrHash],
            errors: T::Array[Telnyx::WirelessError::OrHash]
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
              errors: T::Array[Telnyx::WirelessError]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
