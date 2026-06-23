# typed: strong

module Telnyx
  module Models
    module Dir
      class PhoneNumberDeleteAllParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Dir::PhoneNumberDeleteAllParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :dir_id

        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        sig do
          params(
            dir_id: String,
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(dir_id:, phone_numbers:, request_options: {})
        end

        sig do
          override.returns(
            {
              dir_id: String,
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
