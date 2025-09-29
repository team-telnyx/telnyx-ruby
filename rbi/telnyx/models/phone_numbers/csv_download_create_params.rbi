# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class CsvDownloadCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::CsvDownloadCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Which format to use when generating the CSV file. The default for backwards
        # compatibility is 'V1'
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::CsvDownloadCreateParams::CsvFormat::OrSymbol
            )
          )
        end
        attr_reader :csv_format

        sig do
          params(
            csv_format:
              Telnyx::PhoneNumbers::CsvDownloadCreateParams::CsvFormat::OrSymbol
          ).void
        end
        attr_writer :csv_format

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
        # filter[status], filter[voice.connection_name],
        # filter[voice.usage_payment_method], filter[billing_group_id],
        # filter[emergency_address_id], filter[customer_reference]
        sig do
          returns(
            T.nilable(Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter)
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        sig do
          params(
            csv_format:
              Telnyx::PhoneNumbers::CsvDownloadCreateParams::CsvFormat::OrSymbol,
            filter:
              Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Which format to use when generating the CSV file. The default for backwards
          # compatibility is 'V1'
          csv_format: nil,
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
          # filter[status], filter[voice.connection_name],
          # filter[voice.usage_payment_method], filter[billing_group_id],
          # filter[emergency_address_id], filter[customer_reference]
          filter: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              csv_format:
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::CsvFormat::OrSymbol,
              filter: Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Which format to use when generating the CSV file. The default for backwards
        # compatibility is 'V1'
        module CsvFormat
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::CsvFormat
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          V1 =
            T.let(
              :V1,
              Telnyx::PhoneNumbers::CsvDownloadCreateParams::CsvFormat::TaggedSymbol
            )
          V2 =
            T.let(
              :V2,
              Telnyx::PhoneNumbers::CsvDownloadCreateParams::CsvFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::CsvFormat::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Filter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by the billing_group_id associated with phone numbers. To filter to only
          # phone numbers that have no billing group associated them, set the value of this
          # filter to the string 'null'.
          sig { returns(T.nilable(String)) }
          attr_reader :billing_group_id

          sig { params(billing_group_id: String).void }
          attr_writer :billing_group_id

          # Filter by connection_id.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # Filter numbers via the customer_reference set.
          sig { returns(T.nilable(String)) }
          attr_reader :customer_reference

          sig { params(customer_reference: String).void }
          attr_writer :customer_reference

          # Filter by the emergency_address_id associated with phone numbers. To filter only
          # phone numbers that have no emergency address associated with them, set the value
          # of this filter to the string 'null'.
          sig { returns(T.nilable(String)) }
          attr_reader :emergency_address_id

          sig { params(emergency_address_id: String).void }
          attr_writer :emergency_address_id

          # Filter by phone number that have bundles.
          sig { returns(T.nilable(String)) }
          attr_reader :has_bundle

          sig { params(has_bundle: String).void }
          attr_writer :has_bundle

          # Filter by phone number. Requires at least three digits. Non-numerical characters
          # will result in no values being returned.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Filter by phone number status.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Filter by phone number tags.
          sig { returns(T.nilable(String)) }
          attr_reader :tag

          sig { params(tag: String).void }
          attr_writer :tag

          # Filter by voice connection name pattern matching.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceConnectionName
              )
            )
          end
          attr_reader :voice_connection_name

          sig do
            params(
              voice_connection_name:
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceConnectionName::OrHash
            ).void
          end
          attr_writer :voice_connection_name

          # Filter by usage_payment_method.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod::OrSymbol
              )
            )
          end
          attr_reader :voice_usage_payment_method

          sig do
            params(
              voice_usage_payment_method:
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod::OrSymbol
            ).void
          end
          attr_writer :voice_usage_payment_method

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
          # filter[status], filter[voice.connection_name],
          # filter[voice.usage_payment_method], filter[billing_group_id],
          # filter[emergency_address_id], filter[customer_reference]
          sig do
            params(
              billing_group_id: String,
              connection_id: String,
              customer_reference: String,
              emergency_address_id: String,
              has_bundle: String,
              phone_number: String,
              status:
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::OrSymbol,
              tag: String,
              voice_connection_name:
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceConnectionName::OrHash,
              voice_usage_payment_method:
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by the billing_group_id associated with phone numbers. To filter to only
            # phone numbers that have no billing group associated them, set the value of this
            # filter to the string 'null'.
            billing_group_id: nil,
            # Filter by connection_id.
            connection_id: nil,
            # Filter numbers via the customer_reference set.
            customer_reference: nil,
            # Filter by the emergency_address_id associated with phone numbers. To filter only
            # phone numbers that have no emergency address associated with them, set the value
            # of this filter to the string 'null'.
            emergency_address_id: nil,
            # Filter by phone number that have bundles.
            has_bundle: nil,
            # Filter by phone number. Requires at least three digits. Non-numerical characters
            # will result in no values being returned.
            phone_number: nil,
            # Filter by phone number status.
            status: nil,
            # Filter by phone number tags.
            tag: nil,
            # Filter by voice connection name pattern matching.
            voice_connection_name: nil,
            # Filter by usage_payment_method.
            voice_usage_payment_method: nil
          )
          end

          sig do
            override.returns(
              {
                billing_group_id: String,
                connection_id: String,
                customer_reference: String,
                emergency_address_id: String,
                has_bundle: String,
                phone_number: String,
                status:
                  Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::OrSymbol,
                tag: String,
                voice_connection_name:
                  Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceConnectionName,
                voice_usage_payment_method:
                  Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Filter by phone number status.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PURCHASE_PENDING =
              T.let(
                :"purchase-pending",
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::TaggedSymbol
              )
            PURCHASE_FAILED =
              T.let(
                :"purchase-failed",
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::TaggedSymbol
              )
            PORT_PENDING =
              T.let(
                :"port-pending",
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::TaggedSymbol
              )
            DELETED =
              T.let(
                :deleted,
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::TaggedSymbol
              )
            PORT_FAILED =
              T.let(
                :"port-failed",
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::TaggedSymbol
              )
            EMERGENCY_ONLY =
              T.let(
                :"emergency-only",
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::TaggedSymbol
              )
            PORTED_OUT =
              T.let(
                :"ported-out",
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::TaggedSymbol
              )
            PORT_OUT_PENDING =
              T.let(
                :"port-out-pending",
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class VoiceConnectionName < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceConnectionName,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter contains connection name. Requires at least three characters.
            sig { returns(T.nilable(String)) }
            attr_reader :contains

            sig { params(contains: String).void }
            attr_writer :contains

            # Filter ends with connection name. Requires at least three characters.
            sig { returns(T.nilable(String)) }
            attr_reader :ends_with

            sig { params(ends_with: String).void }
            attr_writer :ends_with

            # Filter by connection name.
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            # Filter starts with connection name. Requires at least three characters.
            sig { returns(T.nilable(String)) }
            attr_reader :starts_with

            sig { params(starts_with: String).void }
            attr_writer :starts_with

            # Filter by voice connection name pattern matching.
            sig do
              params(
                contains: String,
                ends_with: String,
                eq: String,
                starts_with: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Filter contains connection name. Requires at least three characters.
              contains: nil,
              # Filter ends with connection name. Requires at least three characters.
              ends_with: nil,
              # Filter by connection name.
              eq: nil,
              # Filter starts with connection name. Requires at least three characters.
              starts_with: nil
            )
            end

            sig do
              override.returns(
                {
                  contains: String,
                  ends_with: String,
                  eq: String,
                  starts_with: String
                }
              )
            end
            def to_hash
            end
          end

          # Filter by usage_payment_method.
          module VoiceUsagePaymentMethod
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAY_PER_MINUTE =
              T.let(
                :"pay-per-minute",
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
              )
            CHANNEL =
              T.let(
                :channel,
                Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
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
end
