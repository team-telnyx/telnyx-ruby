# typed: strong

module Telnyx
  module Models
    module NumberReservations
      class ActionExtendResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NumberReservations::ActionExtendResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::NumberReservation)) }
        attr_reader :data

        sig { params(data: Telnyx::NumberReservation::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::NumberReservation::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::NumberReservation }) }
        def to_hash
        end
      end
    end
  end
end
