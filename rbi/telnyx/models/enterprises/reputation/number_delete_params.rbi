# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberDeleteParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::NumberDeleteParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          sig { returns(String) }
          attr_accessor :phone_number

          sig do
            params(
              enterprise_id: String,
              phone_number: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(enterprise_id:, phone_number:, request_options: {})
          end

          sig do
            override.returns(
              {
                enterprise_id: String,
                phone_number: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
