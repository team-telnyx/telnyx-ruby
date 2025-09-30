# typed: strong

module Telnyx
  module Models
    class ManagedAccountUpdateGlobalChannelLimitParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ManagedAccountUpdateGlobalChannelLimitParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Integer value that indicates the number of allocatable global outbound channels
      # that should be allocated to the managed account. Must be 0 or more. If the value
      # is 0 then the account will have no usable channels and will not be able to
      # perform outbound calling.
      sig { returns(T.nilable(Integer)) }
      attr_reader :channel_limit

      sig { params(channel_limit: Integer).void }
      attr_writer :channel_limit

      sig do
        params(
          channel_limit: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Integer value that indicates the number of allocatable global outbound channels
        # that should be allocated to the managed account. Must be 0 or more. If the value
        # is 0 then the account will have no usable channels and will not be able to
        # perform outbound calling.
        channel_limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { channel_limit: Integer, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
