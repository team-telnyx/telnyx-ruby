# typed: strong

module Telnyx
  module Models
    class FaxApplicationCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::FaxApplicationCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::FaxApplication)) }
      attr_reader :data

      sig { params(data: Telnyx::FaxApplication::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::FaxApplication::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::FaxApplication }) }
      def to_hash
      end
    end
  end
end
