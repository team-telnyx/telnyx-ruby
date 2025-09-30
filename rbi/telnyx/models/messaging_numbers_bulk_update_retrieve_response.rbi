# typed: strong

module Telnyx
  module Models
    class MessagingNumbersBulkUpdateRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Phone numbers that failed to update.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :failed

        sig { params(failed: T::Array[String]).void }
        attr_writer :failed

        # Phone numbers pending to be updated.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :pending

        sig { params(pending: T::Array[String]).void }
        attr_writer :pending

        # Phoned numbers updated successfully.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :success

        sig { params(success: T::Array[String]).void }
        attr_writer :success

        # Order ID to verify bulk update status.
        sig { returns(T.nilable(String)) }
        attr_reader :order_id

        sig { params(order_id: String).void }
        attr_writer :order_id

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            failed: T::Array[String],
            order_id: String,
            pending: T::Array[String],
            record_type:
              Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data::RecordType::OrSymbol,
            success: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Phone numbers that failed to update.
          failed: nil,
          # Order ID to verify bulk update status.
          order_id: nil,
          # Phone numbers pending to be updated.
          pending: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # Phoned numbers updated successfully.
          success: nil
        )
        end

        sig do
          override.returns(
            {
              failed: T::Array[String],
              order_id: String,
              pending: T::Array[String],
              record_type:
                Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data::RecordType::TaggedSymbol,
              success: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MESSAGING_NUMBERS_BULK_UPDATE =
            T.let(
              :messaging_numbers_bulk_update,
              Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
