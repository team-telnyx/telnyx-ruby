# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class UploadCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::UploadCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :number_ids

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::ExternalConnections::UploadCreateParams::AdditionalUsage::OrSymbol
              ]
            )
          )
        end
        attr_reader :additional_usages

        sig do
          params(
            additional_usages:
              T::Array[
                Telnyx::ExternalConnections::UploadCreateParams::AdditionalUsage::OrSymbol
              ]
          ).void
        end
        attr_writer :additional_usages

        # Identifies the civic address to assign all phone numbers to.
        sig { returns(T.nilable(String)) }
        attr_reader :civic_address_id

        sig { params(civic_address_id: String).void }
        attr_writer :civic_address_id

        # Identifies the location to assign all phone numbers to.
        sig { returns(T.nilable(String)) }
        attr_reader :location_id

        sig { params(location_id: String).void }
        attr_writer :location_id

        # The use case of the upload request. NOTE: `calling_user_assignment` is not
        # supported for toll free numbers.
        sig do
          returns(
            T.nilable(
              Telnyx::ExternalConnections::UploadCreateParams::Usage::OrSymbol
            )
          )
        end
        attr_reader :usage

        sig do
          params(
            usage:
              Telnyx::ExternalConnections::UploadCreateParams::Usage::OrSymbol
          ).void
        end
        attr_writer :usage

        sig do
          params(
            number_ids: T::Array[String],
            additional_usages:
              T::Array[
                Telnyx::ExternalConnections::UploadCreateParams::AdditionalUsage::OrSymbol
              ],
            civic_address_id: String,
            location_id: String,
            usage:
              Telnyx::ExternalConnections::UploadCreateParams::Usage::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          number_ids:,
          additional_usages: nil,
          # Identifies the civic address to assign all phone numbers to.
          civic_address_id: nil,
          # Identifies the location to assign all phone numbers to.
          location_id: nil,
          # The use case of the upload request. NOTE: `calling_user_assignment` is not
          # supported for toll free numbers.
          usage: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              number_ids: T::Array[String],
              additional_usages:
                T::Array[
                  Telnyx::ExternalConnections::UploadCreateParams::AdditionalUsage::OrSymbol
                ],
              civic_address_id: String,
              location_id: String,
              usage:
                Telnyx::ExternalConnections::UploadCreateParams::Usage::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Additional use cases of the upload request. If not provided, all supported
        # usages will be used.
        module AdditionalUsage
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::ExternalConnections::UploadCreateParams::AdditionalUsage
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALLING_USER_ASSIGNMENT =
            T.let(
              :calling_user_assignment,
              Telnyx::ExternalConnections::UploadCreateParams::AdditionalUsage::TaggedSymbol
            )
          FIRST_PARTY_APP_ASSIGNMENT =
            T.let(
              :first_party_app_assignment,
              Telnyx::ExternalConnections::UploadCreateParams::AdditionalUsage::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ExternalConnections::UploadCreateParams::AdditionalUsage::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The use case of the upload request. NOTE: `calling_user_assignment` is not
        # supported for toll free numbers.
        module Usage
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::ExternalConnections::UploadCreateParams::Usage
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALLING_USER_ASSIGNMENT =
            T.let(
              :calling_user_assignment,
              Telnyx::ExternalConnections::UploadCreateParams::Usage::TaggedSymbol
            )
          FIRST_PARTY_APP_ASSIGNMENT =
            T.let(
              :first_party_app_assignment,
              Telnyx::ExternalConnections::UploadCreateParams::Usage::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ExternalConnections::UploadCreateParams::Usage::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
