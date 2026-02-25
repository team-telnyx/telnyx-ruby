# typed: strong

module Telnyx
  module Models
    class QueueUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::QueueUpdateResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::Queue)) }
      attr_reader :data

      sig { params(data: Telnyx::Queue::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::Queue::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Queue }) }
      def to_hash
      end
    end
  end
end
