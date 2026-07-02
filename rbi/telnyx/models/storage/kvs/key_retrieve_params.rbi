# typed: strong

module Telnyx
  module Models
    module Storage
      module Kvs
        class KeyRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Storage::Kvs::KeyRetrieveParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :key

          sig do
            params(
              id: String,
              key: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id:, key:, request_options: {})
          end

          sig do
            override.returns(
              {
                id: String,
                key: String,
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
