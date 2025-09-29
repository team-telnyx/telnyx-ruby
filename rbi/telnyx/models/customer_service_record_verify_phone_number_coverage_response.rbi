# typed: strong

module Telnyx
  module Models
    class CustomerServiceRecordVerifyPhoneNumberCoverageResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Additional data required to perform CSR for the phone number. Only returned if
        # `has_csr_coverage` is true.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :additional_data_required

        sig do
          params(
            additional_data_required:
              T::Array[
                Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::OrSymbol
              ]
          ).void
        end
        attr_writer :additional_data_required

        # Indicates whether the phone number is covered or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_csr_coverage

        sig { params(has_csr_coverage: T::Boolean).void }
        attr_writer :has_csr_coverage

        # The phone number that is being verified.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # The reason why the phone number is not covered. Only returned if
        # `has_csr_coverage` is false.
        sig { returns(T.nilable(String)) }
        attr_reader :reason

        sig { params(reason: String).void }
        attr_writer :reason

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            additional_data_required:
              T::Array[
                Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::OrSymbol
              ],
            has_csr_coverage: T::Boolean,
            phone_number: String,
            reason: String,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Additional data required to perform CSR for the phone number. Only returned if
          # `has_csr_coverage` is true.
          additional_data_required: nil,
          # Indicates whether the phone number is covered or not.
          has_csr_coverage: nil,
          # The phone number that is being verified.
          phone_number: nil,
          # The reason why the phone number is not covered. Only returned if
          # `has_csr_coverage` is false.
          reason: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              additional_data_required:
                T::Array[
                  Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
                ],
              has_csr_coverage: T::Boolean,
              phone_number: String,
              reason: String,
              record_type: String
            }
          )
        end
        def to_hash
        end

        module AdditionalDataRequired
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NAME =
            T.let(
              :name,
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
            )
          AUTHORIZED_PERSON_NAME =
            T.let(
              :authorized_person_name,
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
            )
          ACCOUNT_NUMBER =
            T.let(
              :account_number,
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
            )
          CUSTOMER_CODE =
            T.let(
              :customer_code,
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
            )
          PIN =
            T.let(
              :pin,
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
            )
          ADDRESS_LINE_1 =
            T.let(
              :address_line_1,
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
            )
          CITY =
            T.let(
              :city,
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
            )
          STATE =
            T.let(
              :state,
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
            )
          ZIP_CODE =
            T.let(
              :zip_code,
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
            )
          BILLING_PHONE_NUMBER =
            T.let(
              :billing_phone_number,
              Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired::TaggedSymbol
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
