# typed: strong

module Telnyx
  module Models
    class SimCardGroupRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardGroupRetrieveParams, Telnyx::Internal::AnyHash)
        end

      # It includes a list of associated ICCIDs.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_iccids

      sig { params(include_iccids: T::Boolean).void }
      attr_writer :include_iccids

      sig do
        params(
          include_iccids: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # It includes a list of associated ICCIDs.
        include_iccids: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include_iccids: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
