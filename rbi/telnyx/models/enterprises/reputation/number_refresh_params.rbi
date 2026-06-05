# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberRefreshParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::NumberRefreshParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          # Phone numbers to refresh reputation data for. 1–100 numbers per request, each in
          # E.164 format. Reputation refreshes are subject to per-enterprise rate limits.
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
            # Phone numbers to refresh reputation data for. 1–100 numbers per request, each in
            # E.164 format. Reputation refreshes are subject to per-enterprise rate limits.
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
