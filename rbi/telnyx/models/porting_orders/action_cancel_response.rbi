# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class ActionCancelResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::ActionCancelResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::PortingOrder)) }
        attr_reader :data

        sig { params(data: Telnyx::PortingOrder::OrHash).void }
        attr_writer :data

        sig do
          returns(
            T.nilable(Telnyx::Models::PortingOrders::ActionCancelResponse::Meta)
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::PortingOrders::ActionCancelResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data: Telnyx::PortingOrder::OrHash,
            meta:
              Telnyx::Models::PortingOrders::ActionCancelResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data: Telnyx::PortingOrder,
              meta: Telnyx::Models::PortingOrders::ActionCancelResponse::Meta
            }
          )
        end
        def to_hash
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PortingOrders::ActionCancelResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          # Link to list all phone numbers
          sig { returns(T.nilable(String)) }
          attr_reader :phone_numbers_url

          sig { params(phone_numbers_url: String).void }
          attr_writer :phone_numbers_url

          sig { params(phone_numbers_url: String).returns(T.attached_class) }
          def self.new(
            # Link to list all phone numbers
            phone_numbers_url: nil
          )
          end

          sig { override.returns({ phone_numbers_url: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
