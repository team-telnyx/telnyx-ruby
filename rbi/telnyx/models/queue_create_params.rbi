# typed: strong

module Telnyx
  module Models
    class QueueCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::QueueCreateParams, Telnyx::Internal::AnyHash)
        end

      # The name of the queue. Must be between 1 and 255 characters.
      sig { returns(String) }
      attr_accessor :queue_name

      # The maximum number of calls allowed in the queue.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_size

      sig { params(max_size: Integer).void }
      attr_writer :max_size

      sig do
        params(
          queue_name: String,
          max_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the queue. Must be between 1 and 255 characters.
        queue_name:,
        # The maximum number of calls allowed in the queue.
        max_size: nil,
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
