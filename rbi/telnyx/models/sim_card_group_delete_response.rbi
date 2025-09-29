# typed: strong

module Telnyx
  module Models
    class SimCardGroupDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SimCardGroupDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::SimCardGroup)) }
      attr_reader :data

      sig { params(data: Telnyx::SimCardGroup::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::SimCardGroup::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::SimCardGroup }) }
      def to_hash
      end
    end
  end
end
