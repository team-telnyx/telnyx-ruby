# typed: strong

module Telnyx
  module Models
    class PortingOrderRetrieveAllowedFocWindowsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse::Data::OrHash
            ],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse::Data
              ],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # ISO 8601 formatted date indicating the end of the range of foc window
        sig { returns(T.nilable(Time)) }
        attr_reader :ended_at

        sig { params(ended_at: Time).void }
        attr_writer :ended_at

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date indicating the start of the range of foc window.
        sig { returns(T.nilable(Time)) }
        attr_reader :started_at

        sig { params(started_at: Time).void }
        attr_writer :started_at

        sig do
          params(ended_at: Time, record_type: String, started_at: Time).returns(
            T.attached_class
          )
        end
        def self.new(
          # ISO 8601 formatted date indicating the end of the range of foc window
          ended_at: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 formatted date indicating the start of the range of foc window.
          started_at: nil
        )
        end

        sig do
          override.returns(
            { ended_at: Time, record_type: String, started_at: Time }
          )
        end
        def to_hash
        end
      end
    end
  end
end
