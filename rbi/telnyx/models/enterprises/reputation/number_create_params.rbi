# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::NumberCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          # List of phone numbers to associate for reputation monitoring (max 100)
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
            # List of phone numbers to associate for reputation monitoring (max 100)
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
