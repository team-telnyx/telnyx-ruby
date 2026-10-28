# typed: strong

module Telnyx
  module Models
    class BrowserSessionCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::BrowserSessionCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Session)) }
      attr_reader :data

      sig { params(data: Telnyx::Session::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::Session::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Session }) }
      def to_hash
      end
    end
  end
end
