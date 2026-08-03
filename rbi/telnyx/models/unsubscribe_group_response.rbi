# typed: strong

module Telnyx
  module Models
    class UnsubscribeGroupResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::UnsubscribeGroupResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::UnsubscribeGroup) }
      attr_reader :data

      sig { params(data: Telnyx::UnsubscribeGroup::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::UnsubscribeGroup::OrHash).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::UnsubscribeGroup }) }
      def to_hash
      end
    end
  end
end
