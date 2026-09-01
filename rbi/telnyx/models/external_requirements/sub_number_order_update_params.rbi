# typed: strong

module Telnyx
  module Models
    module ExternalRequirements
      class SubNumberOrderUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalRequirements::SubNumberOrderUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :regulatory_requirement_id

        sig { returns(String) }
        attr_accessor :sub_number_order_id

        # The end user's identity details for the action requirement. Australia mobile ID
        # verification is currently the only action requirement. It requires `first_name`
        # and `last_name`, the same fields the corresponding GET lists in
        # `fields_required`.
        sig do
          returns(
            Telnyx::ExternalRequirements::SubNumberOrderUpdateParams::Requirement
          )
        end
        attr_reader :requirement

        sig do
          params(
            requirement:
              Telnyx::ExternalRequirements::SubNumberOrderUpdateParams::Requirement::OrHash
          ).void
        end
        attr_writer :requirement

        sig do
          params(
            regulatory_requirement_id: String,
            sub_number_order_id: String,
            requirement:
              Telnyx::ExternalRequirements::SubNumberOrderUpdateParams::Requirement::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          regulatory_requirement_id:,
          sub_number_order_id:,
          # The end user's identity details for the action requirement. Australia mobile ID
          # verification is currently the only action requirement. It requires `first_name`
          # and `last_name`, the same fields the corresponding GET lists in
          # `fields_required`.
          requirement:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              regulatory_requirement_id: String,
              sub_number_order_id: String,
              requirement:
                Telnyx::ExternalRequirements::SubNumberOrderUpdateParams::Requirement,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Requirement < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ExternalRequirements::SubNumberOrderUpdateParams::Requirement,
                Telnyx::Internal::AnyHash
              )
            end

          # The end user's first name.
          sig { returns(String) }
          attr_accessor :first_name

          # The end user's last name.
          sig { returns(String) }
          attr_accessor :last_name

          # The end user's identity details for the action requirement. Australia mobile ID
          # verification is currently the only action requirement. It requires `first_name`
          # and `last_name`, the same fields the corresponding GET lists in
          # `fields_required`.
          sig do
            params(first_name: String, last_name: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The end user's first name.
            first_name:,
            # The end user's last name.
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
