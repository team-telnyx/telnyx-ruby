# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class UploadPendingCountResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::UploadPendingCountResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::ExternalConnections::UploadPendingCountResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::ExternalConnections::UploadPendingCountResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::ExternalConnections::UploadPendingCountResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::ExternalConnections::UploadPendingCountResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ExternalConnections::UploadPendingCountResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The count of phone numbers that are pending assignment to the external
          # connection.
          sig { returns(T.nilable(Integer)) }
          attr_reader :pending_numbers_count

          sig { params(pending_numbers_count: Integer).void }
          attr_writer :pending_numbers_count

          # The count of number uploads that have not yet been uploaded to Microsoft.
          sig { returns(T.nilable(Integer)) }
          attr_reader :pending_orders_count

          sig { params(pending_orders_count: Integer).void }
          attr_writer :pending_orders_count

          sig do
            params(
              pending_numbers_count: Integer,
              pending_orders_count: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The count of phone numbers that are pending assignment to the external
            # connection.
            pending_numbers_count: nil,
            # The count of number uploads that have not yet been uploaded to Microsoft.
            pending_orders_count: nil
          )
          end

          sig do
            override.returns(
              { pending_numbers_count: Integer, pending_orders_count: Integer }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
