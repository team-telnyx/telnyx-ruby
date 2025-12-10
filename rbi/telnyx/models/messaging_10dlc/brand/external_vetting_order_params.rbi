# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      module Brand
        class ExternalVettingOrderParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Messaging10dlc::Brand::ExternalVettingOrderParams,
                Telnyx::Internal::AnyHash
              )
            end

          # External vetting provider ID for the brand.
          sig { returns(String) }
          attr_accessor :evp_id

          # Identifies the vetting classification.
          sig { returns(String) }
          attr_accessor :vetting_class

          sig do
            params(
              evp_id: String,
              vetting_class: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # External vetting provider ID for the brand.
            evp_id:,
            # Identifies the vetting classification.
            vetting_class:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                evp_id: String,
                vetting_class: String,
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
