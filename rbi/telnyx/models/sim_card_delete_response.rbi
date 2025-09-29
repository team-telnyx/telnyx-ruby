# typed: strong

module Telnyx
  module Models
    class SimCardDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SimCardDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::SimCard)) }
      attr_reader :data

      sig { params(data: Telnyx::SimCard::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::SimCard::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::SimCard }) }
      def to_hash
      end
    end
  end
end
