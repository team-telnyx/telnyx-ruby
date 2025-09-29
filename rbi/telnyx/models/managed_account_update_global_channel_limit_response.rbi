# typed: strong

module Telnyx
  module Models
    class ManagedAccountUpdateGlobalChannelLimitResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The user ID of the managed account.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Integer value that indicates the number of allocatable global outbound channels
        # that are allocated to the managed account. If the value is 0 then the account
        # will have no usable channels and will not be able to perform outbound calling.
        sig { returns(T.nilable(Integer)) }
        attr_reader :channel_limit

        sig { params(channel_limit: Integer).void }
        attr_writer :channel_limit

        # The email of the managed account.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # The user ID of the manager of the account.
        sig { returns(T.nilable(String)) }
        attr_reader :manager_account_id

        sig { params(manager_account_id: String).void }
        attr_writer :manager_account_id

        # The name of the type of data in the response.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            id: String,
            channel_limit: Integer,
            email: String,
            manager_account_id: String,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The user ID of the managed account.
          id: nil,
          # Integer value that indicates the number of allocatable global outbound channels
          # that are allocated to the managed account. If the value is 0 then the account
          # will have no usable channels and will not be able to perform outbound calling.
          channel_limit: nil,
          # The email of the managed account.
          email: nil,
          # The user ID of the manager of the account.
          manager_account_id: nil,
          # The name of the type of data in the response.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              channel_limit: Integer,
              email: String,
              manager_account_id: String,
              record_type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
