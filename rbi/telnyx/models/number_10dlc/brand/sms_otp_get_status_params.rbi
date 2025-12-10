# typed: strong

module Telnyx
  module Models
    module Number10dlc
      module Brand
        class SMSOtpGetStatusParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Number10dlc::Brand::SMSOtpGetStatusParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by Brand ID for easier lookup in portal applications
          sig { returns(T.nilable(String)) }
          attr_reader :brand_id

          sig { params(brand_id: String).void }
          attr_writer :brand_id

          sig do
            params(
              brand_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by Brand ID for easier lookup in portal applications
            brand_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              { brand_id: String, request_options: Telnyx::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
