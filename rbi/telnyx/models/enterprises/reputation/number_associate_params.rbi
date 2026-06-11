# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberAssociateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::NumberAssociateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          # 1–100 phone numbers in E.164 format with a leading `+`.
          sig { returns(T::Array[String]) }
          attr_accessor :phone_numbers

          sig do
            params(
              enterprise_id: String,
              phone_numbers: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            enterprise_id:,
            # 1–100 phone numbers in E.164 format with a leading `+`.
            phone_numbers:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                enterprise_id: String,
                phone_numbers: T::Array[String],
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
