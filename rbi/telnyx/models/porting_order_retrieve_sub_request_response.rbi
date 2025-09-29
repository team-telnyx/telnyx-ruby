# typed: strong

module Telnyx
  module Models
    class PortingOrderRetrieveSubRequestResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PortingOrderRetrieveSubRequestResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::Models::PortingOrderRetrieveSubRequestResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::PortingOrderRetrieveSubRequestResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::PortingOrderRetrieveSubRequestResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::PortingOrderRetrieveSubRequestResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrderRetrieveSubRequestResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the Port Request associated with the Porting Order
        sig { returns(T.nilable(String)) }
        attr_reader :port_request_id

        sig { params(port_request_id: String).void }
        attr_writer :port_request_id

        # Identifies the Sub Request associated with the Porting Order
        sig { returns(T.nilable(String)) }
        attr_reader :sub_request_id

        sig { params(sub_request_id: String).void }
        attr_writer :sub_request_id

        sig do
          params(port_request_id: String, sub_request_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Identifies the Port Request associated with the Porting Order
          port_request_id: nil,
          # Identifies the Sub Request associated with the Porting Order
          sub_request_id: nil
        )
        end

        sig do
          override.returns({ port_request_id: String, sub_request_id: String })
        end
        def to_hash
        end
      end
    end
  end
end
