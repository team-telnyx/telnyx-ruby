# typed: strong

module Telnyx
  module Models
    class SimCardUpdateParams < Telnyx::Models::SimCard
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :sim_card_id

      sig do
        params(
          sim_card_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(sim_card_id:, request_options: {})
      end

      sig do
        override.returns(
          { sim_card_id: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
