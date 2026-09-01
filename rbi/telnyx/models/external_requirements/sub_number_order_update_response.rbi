# typed: strong

module Telnyx
  module Models
    module ExternalRequirements
      class SubNumberOrderUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :regulatory_requirement_id

          sig { params(regulatory_requirement_id: String).void }
          attr_writer :regulatory_requirement_id

          sig do
            returns(
              T.nilable(
                Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::RequirementAction
              )
            )
          end
          attr_reader :requirement_action

          sig do
            params(
              requirement_action:
                Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::RequirementAction::OrHash
            ).void
          end
          attr_writer :requirement_action

          sig { returns(T.nilable(String)) }
          attr_reader :sub_order_id

          sig { params(sub_order_id: String).void }
          attr_writer :sub_order_id

          sig do
            params(
              regulatory_requirement_id: String,
              requirement_action:
                Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::RequirementAction::OrHash,
              sub_order_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            regulatory_requirement_id: nil,
            requirement_action: nil,
            sub_order_id: nil
          )
          end

          sig do
            override.returns(
              {
                regulatory_requirement_id: String,
                requirement_action:
                  Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::RequirementAction,
                sub_order_id: String
              }
            )
          end
          def to_hash
          end

          class RequirementAction < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::RequirementAction,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            # For Australia mobile ID verification, the unique Onfido verification link to
            # share with the end user.
            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig do
              params(type: String, value: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              type: nil,
              # For Australia mobile ID verification, the unique Onfido verification link to
              # share with the end user.
              value: nil
            )
            end

            sig { override.returns({ type: String, value: T.nilable(String) }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
