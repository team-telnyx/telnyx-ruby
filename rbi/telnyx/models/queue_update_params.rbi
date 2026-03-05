# typed: strong

module Telnyx
  module Models
    class QueueUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::QueueUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :queue_name

      # The maximum number of calls allowed in the queue.
      sig { returns(Integer) }
      attr_accessor :max_size

      sig do
        params(
          queue_name: String,
          max_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        queue_name:,
        # The maximum number of calls allowed in the queue.
        max_size:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            queue_name: String,
            max_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
