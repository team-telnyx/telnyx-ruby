# typed: strong

module Telnyx
  module Models
    class CampaignDeactivateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CampaignDeactivateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Float) }
      attr_accessor :time

      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(time: Float, message: String, record_type: String).returns(
          T.attached_class
        )
      end
      def self.new(time:, message: nil, record_type: nil)
      end

      sig do
        override.returns({ time: Float, message: String, record_type: String })
      end
      def to_hash
      end
    end
  end
end
