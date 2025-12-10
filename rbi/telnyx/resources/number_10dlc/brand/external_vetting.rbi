# typed: strong

module Telnyx
  module Resources
    class Number10dlc
      class Brand
        class ExternalVetting
          # Order new external vetting for a brand
          sig do
            params(
              brand_id: String,
              evp_id: String,
              vetting_class: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Number10dlc::Brand::ExternalVettingExternalVettingResponse
            )
          end
          def external_vetting(
            brand_id,
            # External vetting provider ID for the brand.
            evp_id:,
            # Identifies the vetting classification.
            vetting_class:,
            request_options: {}
          )
          end

          # Get list of valid external vetting record for a given brand
          sig do
            params(
              brand_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              T::Array[
                Telnyx::Models::Number10dlc::Brand::ExternalVettingRetrieveExternalVettingResponseItem
              ]
            )
          end
          def retrieve_external_vetting(brand_id, request_options: {})
          end

          # This operation can be used to import an external vetting record from a
          # TCR-approved vetting provider. If the vetting provider confirms validity of the
          # record, it will be saved with the brand and will be considered for future
          # campaign qualification.
          sig do
            params(
              brand_id: String,
              evp_id: String,
              vetting_id: String,
              vetting_token: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Number10dlc::Brand::ExternalVettingUpdateExternalVettingResponse
            )
          end
          def update_external_vetting(
            brand_id,
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

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
