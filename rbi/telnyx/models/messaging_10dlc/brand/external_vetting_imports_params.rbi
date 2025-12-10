# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      module Brand
        class ExternalVettingImportsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Messaging10dlc::Brand::ExternalVettingImportsParams,
                Telnyx::Internal::AnyHash
              )
            end

          # External vetting provider ID for the brand.
          sig { returns(String) }
          attr_accessor :evp_id

          # Unique ID that identifies a vetting transaction performed by a vetting provider.
          # This ID is provided by the vetting provider at time of vetting.
          sig { returns(String) }
          attr_accessor :vetting_id

          # Required by some providers for vetting record confirmation.
          sig { returns(T.nilable(String)) }
          attr_reader :vetting_token

          sig { params(vetting_token: String).void }
          attr_writer :vetting_token

          sig do
            params(
              evp_id: String,
              vetting_id: String,
              vetting_token: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # External vetting provider ID for the brand.
            evp_id:,
            # Unique ID that identifies a vetting transaction performed by a vetting provider.
            # This ID is provided by the vetting provider at time of vetting.
            vetting_id:,
            # Required by some providers for vetting record confirmation.
            vetting_token: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                evp_id: String,
                vetting_id: String,
                vetting_token: String,
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
