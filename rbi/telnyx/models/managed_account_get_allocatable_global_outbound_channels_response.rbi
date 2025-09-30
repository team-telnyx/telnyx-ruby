# typed: strong

module Telnyx
  module Models
    class ManagedAccountGetAllocatableGlobalOutboundChannelsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The total amount of allocatable global outbound channels available to the
        # authenticated manager. Will be 0 if the feature is not enabled for their
        # account.
        sig { returns(T.nilable(Integer)) }
        attr_reader :allocatable_global_outbound_channels

        sig { params(allocatable_global_outbound_channels: Integer).void }
        attr_writer :allocatable_global_outbound_channels

        # Boolean value that indicates if the managed account is able to have custom
        # pricing set for it or not. If false, uses the pricing of the manager account.
        # Defaults to false. This value may be changed, but there may be time lag between
        # when the value is changed and pricing changes take effect.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :managed_account_allow_custom_pricing

        sig { params(managed_account_allow_custom_pricing: T::Boolean).void }
        attr_writer :managed_account_allow_custom_pricing

        # The type of the data contained in this record.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # The total number of allocatable global outbound channels currently allocated
        # across all managed accounts for the authenticated user. This includes any amount
        # of channels allocated by default at managed account creation time. Will be 0 if
        # the feature is not enabled for their account.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_global_channels_allocated

        sig { params(total_global_channels_allocated: Integer).void }
        attr_writer :total_global_channels_allocated

        sig do
          params(
            allocatable_global_outbound_channels: Integer,
            managed_account_allow_custom_pricing: T::Boolean,
            record_type: String,
            total_global_channels_allocated: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The total amount of allocatable global outbound channels available to the
          # authenticated manager. Will be 0 if the feature is not enabled for their
          # account.
          allocatable_global_outbound_channels: nil,
          # Boolean value that indicates if the managed account is able to have custom
          # pricing set for it or not. If false, uses the pricing of the manager account.
          # Defaults to false. This value may be changed, but there may be time lag between
          # when the value is changed and pricing changes take effect.
          managed_account_allow_custom_pricing: nil,
          # The type of the data contained in this record.
          record_type: nil,
          # The total number of allocatable global outbound channels currently allocated
          # across all managed accounts for the authenticated user. This includes any amount
          # of channels allocated by default at managed account creation time. Will be 0 if
          # the feature is not enabled for their account.
          total_global_channels_allocated: nil
        )
        end

        sig do
          override.returns(
            {
              allocatable_global_outbound_channels: Integer,
              managed_account_allow_custom_pricing: T::Boolean,
              record_type: String,
              total_global_channels_allocated: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
