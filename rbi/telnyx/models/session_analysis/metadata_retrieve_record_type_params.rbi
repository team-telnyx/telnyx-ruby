# typed: strong

module Telnyx
  module Models
    module SessionAnalysis
      class MetadataRetrieveRecordTypeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SessionAnalysis::MetadataRetrieveRecordTypeParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :record_type

        sig do
          params(
            record_type: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(record_type:, request_options: {})
        end

        sig do
          override.returns(
            { record_type: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
