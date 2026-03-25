# typed: strong

module Telnyx
  module Models
    module Reputation
      class NumberRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Reputation::NumberRetrieveParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :phone_number

        # When true, fetches fresh reputation data (incurs API cost). When false, returns
        # cached data.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :fresh

        sig { params(fresh: T::Boolean).void }
        attr_writer :fresh

        sig do
          params(
            phone_number: String,
            fresh: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          phone_number:,
          # When true, fetches fresh reputation data (incurs API cost). When false, returns
          # cached data.
          fresh: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              phone_number: String,
              fresh: T::Boolean,
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
