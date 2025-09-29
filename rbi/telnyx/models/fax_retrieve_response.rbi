# typed: strong

module Telnyx
  module Models
    class FaxRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::FaxRetrieveResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::Fax)) }
      attr_reader :data

      sig { params(data: Telnyx::Fax::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::Fax::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Fax }) }
      def to_hash
      end
    end
  end
end
