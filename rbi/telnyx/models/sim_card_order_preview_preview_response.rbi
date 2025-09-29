# typed: strong

module Telnyx
  module Models
    class SimCardOrderPreviewPreviewResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SimCardOrderPreviewPreviewResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The amount of SIM cards requested in the SIM card order.
        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity

        sig { params(quantity: Integer).void }
        attr_writer :quantity

        sig do
          returns(
            T.nilable(
              Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::ShippingCost
            )
          )
        end
        attr_reader :shipping_cost

        sig do
          params(
            shipping_cost:
              Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::ShippingCost::OrHash
          ).void
        end
        attr_writer :shipping_cost

        sig do
          returns(
            T.nilable(
              Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::SimCardsCost
            )
          )
        end
        attr_reader :sim_cards_cost

        sig do
          params(
            sim_cards_cost:
              Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::SimCardsCost::OrHash
          ).void
        end
        attr_writer :sim_cards_cost

        sig do
          returns(
            T.nilable(
              Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::TotalCost
            )
          )
        end
        attr_reader :total_cost

        sig do
          params(
            total_cost:
              Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::TotalCost::OrHash
          ).void
        end
        attr_writer :total_cost

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            quantity: Integer,
            record_type: String,
            shipping_cost:
              Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::ShippingCost::OrHash,
            sim_cards_cost:
              Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::SimCardsCost::OrHash,
            total_cost:
              Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::TotalCost::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount of SIM cards requested in the SIM card order.
          quantity: nil,
          # Identifies the type of the resource.
          record_type: nil,
          shipping_cost: nil,
          sim_cards_cost: nil,
          total_cost: nil
        )
        end

        sig do
          override.returns(
            {
              quantity: Integer,
              record_type: String,
              shipping_cost:
                Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::ShippingCost,
              sim_cards_cost:
                Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::SimCardsCost,
              total_cost:
                Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::TotalCost
            }
          )
        end
        def to_hash
        end

        class ShippingCost < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::ShippingCost,
                Telnyx::Internal::AnyHash
              )
            end

          # A string representing the cost amount.
          sig { returns(T.nilable(String)) }
          attr_reader :amount

          sig { params(amount: String).void }
          attr_writer :amount

          # ISO 4217 currency string.
          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          sig do
            params(amount: String, currency: String).returns(T.attached_class)
          end
          def self.new(
            # A string representing the cost amount.
            amount: nil,
            # ISO 4217 currency string.
            currency: nil
          )
          end

          sig { override.returns({ amount: String, currency: String }) }
          def to_hash
          end
        end

        class SimCardsCost < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::SimCardsCost,
                Telnyx::Internal::AnyHash
              )
            end

          # A string representing the cost amount.
          sig { returns(T.nilable(String)) }
          attr_reader :amount

          sig { params(amount: String).void }
          attr_writer :amount

          # ISO 4217 currency string.
          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          sig do
            params(amount: String, currency: String).returns(T.attached_class)
          end
          def self.new(
            # A string representing the cost amount.
            amount: nil,
            # ISO 4217 currency string.
            currency: nil
          )
          end

          sig { override.returns({ amount: String, currency: String }) }
          def to_hash
          end
        end

        class TotalCost < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::TotalCost,
                Telnyx::Internal::AnyHash
              )
            end

          # A string representing the cost amount.
          sig { returns(T.nilable(String)) }
          attr_reader :amount

          sig { params(amount: String).void }
          attr_writer :amount

          # ISO 4217 currency string.
          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          sig do
            params(amount: String, currency: String).returns(T.attached_class)
          end
          def self.new(
            # A string representing the cost amount.
            amount: nil,
            # ISO 4217 currency string.
            currency: nil
          )
          end

          sig { override.returns({ amount: String, currency: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
