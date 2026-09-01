# typed: strong

module Telnyx
  module Models
    module ExternalRequirements
      class SubNumberOrderRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The fields the end user must provide to fulfill this requirement.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::FieldsRequired
                ]
              )
            )
          end
          attr_reader :fields_required

          sig do
            params(
              fields_required:
                T::Array[
                  Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::FieldsRequired::OrHash
                ]
            ).void
          end
          attr_writer :fields_required

          sig { returns(T.nilable(String)) }
          attr_reader :regulatory_requirement_id

          sig { params(regulatory_requirement_id: String).void }
          attr_writer :regulatory_requirement_id

          sig do
            returns(
              T.nilable(
                Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::RequirementAction
              )
            )
          end
          attr_reader :requirement_action

          sig do
            params(
              requirement_action:
                Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::RequirementAction::OrHash
            ).void
          end
          attr_writer :requirement_action

          sig do
            params(
              fields_required:
                T::Array[
                  Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::FieldsRequired::OrHash
                ],
              regulatory_requirement_id: String,
              requirement_action:
                Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::RequirementAction::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The fields the end user must provide to fulfill this requirement.
            fields_required: nil,
            regulatory_requirement_id: nil,
            requirement_action: nil
          )
          end

          sig do
            override.returns(
              {
                fields_required:
                  T::Array[
                    Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::FieldsRequired
                  ],
                regulatory_requirement_id: String,
                requirement_action:
                  Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::RequirementAction
              }
            )
          end
          def to_hash
          end

          class FieldsRequired < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::FieldsRequired,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # The field name to send inside the `requirement` object on the POST.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            # The value already stored for this field, or null if not yet provided.
            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig do
              params(
                description: String,
                name: String,
                type: String,
                value: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              description: nil,
              # The field name to send inside the `requirement` object on the POST.
              name: nil,
              type: nil,
              # The value already stored for this field, or null if not yet provided.
              value: nil
            )
            end

            sig do
              override.returns(
                {
                  description: String,
                  name: String,
                  type: String,
                  value: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class RequirementAction < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::RequirementAction,
                  Telnyx::Internal::AnyHash
                )
              end

            # The type of action the end user must complete.
            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            # The action value. For ID verification this is the verification link URL, or null
            # until it has been generated.
            sig { returns(T.nilable(String)) }
            attr_accessor :value

            sig do
              params(type: String, value: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # The type of action the end user must complete.
              type: nil,
              # The action value. For ID verification this is the verification link URL, or null
              # until it has been generated.
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
