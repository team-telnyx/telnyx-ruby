# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class ActionRequirementInitiateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::ActionRequirementInitiateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :porting_order_id

        # Required information for initiating the action requirement for AU ID
        # verification.
        sig do
          returns(
            Telnyx::PortingOrders::ActionRequirementInitiateParams::Params
          )
        end
        attr_reader :params

        sig do
          params(
            params:
              Telnyx::PortingOrders::ActionRequirementInitiateParams::Params::OrHash
          ).void
        end
        attr_writer :params

        sig do
          params(
            porting_order_id: String,
            params:
              Telnyx::PortingOrders::ActionRequirementInitiateParams::Params::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          porting_order_id:,
          # Required information for initiating the action requirement for AU ID
          # verification.
          params:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              porting_order_id: String,
              params:
                Telnyx::PortingOrders::ActionRequirementInitiateParams::Params,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Params < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::ActionRequirementInitiateParams::Params,
                Telnyx::Internal::AnyHash
              )
            end

          # The first name of the person that will perform the verification flow.
          sig { returns(String) }
          attr_accessor :first_name

          # The last name of the person that will perform the verification flow.
          sig { returns(String) }
          attr_accessor :last_name

          # Required information for initiating the action requirement for AU ID
          # verification.
          sig do
            params(first_name: String, last_name: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The first name of the person that will perform the verification flow.
            first_name:,
            # The last name of the person that will perform the verification flow.
            last_name:
          )
          end

          sig { override.returns({ first_name: String, last_name: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
