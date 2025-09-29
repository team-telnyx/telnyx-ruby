# typed: strong

module Telnyx
  module Models
    class InboundChannelListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::InboundChannelListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::InboundChannelListResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::InboundChannelListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::InboundChannelListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::InboundChannelListResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::InboundChannelListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The current number of concurrent channels set for the account
        sig { returns(T.nilable(Integer)) }
        attr_reader :channels

        sig { params(channels: Integer).void }
        attr_writer :channels

        # Identifies the type of the response
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(channels: Integer, record_type: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The current number of concurrent channels set for the account
          channels: nil,
          # Identifies the type of the response
          record_type: nil
        )
        end

        sig { override.returns({ channels: Integer, record_type: String }) }
        def to_hash
        end
      end
    end
  end
end
