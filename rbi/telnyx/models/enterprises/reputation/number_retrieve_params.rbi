# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::NumberRetrieveParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

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
              enterprise_id: String,
              phone_number: String,
              fresh: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            enterprise_id:,
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
                enterprise_id: String,
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
end
