# typed: strong

module Telnyx
  module Models
    class IPCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::IPCreateResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::IP)) }
      attr_reader :data

      sig { params(data: Telnyx::IP::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::IP::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::IP }) }
      def to_hash
      end
    end
  end
end
