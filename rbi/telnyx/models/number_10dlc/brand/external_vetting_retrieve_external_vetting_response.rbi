# typed: strong

module Telnyx
  module Models
    module Number10dlc
      module Brand
        class ExternalVettingRetrieveExternalVettingResponseItem < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Number10dlc::Brand::ExternalVettingRetrieveExternalVettingResponseItem,
                Telnyx::Internal::AnyHash
              )
            end

          # Vetting submission date. This is the date when the vetting request is generated
          # in ISO 8601 format.
          sig { returns(T.nilable(String)) }
          attr_reader :create_date

          sig { params(create_date: String).void }
          attr_writer :create_date

          # External vetting provider ID for the brand.
          sig { returns(T.nilable(String)) }
          attr_reader :evp_id

          sig { params(evp_id: String).void }
          attr_writer :evp_id

          # Vetting effective date. This is the date when vetting was completed, or the
          # starting effective date in ISO 8601 format. If this date is missing, then the
          # vetting was not complete or not valid.
          sig { returns(T.nilable(String)) }
          attr_reader :vetted_date

          sig { params(vetted_date: String).void }
          attr_writer :vetted_date

          # Identifies the vetting classification.
          sig { returns(T.nilable(String)) }
          attr_reader :vetting_class

          sig { params(vetting_class: String).void }
          attr_writer :vetting_class

          # Unique ID that identifies a vetting transaction performed by a vetting provider.
          # This ID is provided by the vetting provider at time of vetting.
          sig { returns(T.nilable(String)) }
          attr_reader :vetting_id

          sig { params(vetting_id: String).void }
          attr_writer :vetting_id

          # Vetting score ranging from 0-100.
          sig { returns(T.nilable(Integer)) }
          attr_reader :vetting_score

          sig { params(vetting_score: Integer).void }
          attr_writer :vetting_score

          # Required by some providers for vetting record confirmation.
          sig { returns(T.nilable(String)) }
          attr_reader :vetting_token

          sig { params(vetting_token: String).void }
          attr_writer :vetting_token

          sig do
            params(
              create_date: String,
              evp_id: String,
              vetted_date: String,
              vetting_class: String,
              vetting_id: String,
              vetting_score: Integer,
              vetting_token: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Vetting submission date. This is the date when the vetting request is generated
            # in ISO 8601 format.
            create_date: nil,
            # External vetting provider ID for the brand.
            evp_id: nil,
            # Vetting effective date. This is the date when vetting was completed, or the
            # starting effective date in ISO 8601 format. If this date is missing, then the
            # vetting was not complete or not valid.
            vetted_date: nil,
            # Identifies the vetting classification.
            vetting_class: nil,
            # Unique ID that identifies a vetting transaction performed by a vetting provider.
            # This ID is provided by the vetting provider at time of vetting.
            vetting_id: nil,
            # Vetting score ranging from 0-100.
            vetting_score: nil,
            # Required by some providers for vetting record confirmation.
            vetting_token: nil
          )
          end

          sig do
            override.returns(
              {
                create_date: String,
                evp_id: String,
                vetted_date: String,
                vetting_class: String,
                vetting_id: String,
                vetting_score: Integer,
                vetting_token: String
              }
            )
          end
          def to_hash
          end
        end

        ExternalVettingRetrieveExternalVettingResponse =
          T.let(
            Telnyx::Internal::Type::ArrayOf[
              Telnyx::Models::Number10dlc::Brand::ExternalVettingRetrieveExternalVettingResponseItem
            ],
            Telnyx::Internal::Type::Converter
          )
      end
    end
  end
end
