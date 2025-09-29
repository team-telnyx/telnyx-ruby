# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PhoneNumberBlockCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::PhoneNumberBlockCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies the activation ranges for this porting phone number block. The
        # activation range must be within the block range and should not overlap with
        # other activation ranges.
        sig do
          returns(
            T::Array[
              Telnyx::PortingOrders::PhoneNumberBlockCreateParams::ActivationRange
            ]
          )
        end
        attr_accessor :activation_ranges

        sig do
          returns(
            Telnyx::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange
          )
        end
        attr_reader :phone_number_range

        sig do
          params(
            phone_number_range:
              Telnyx::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange::OrHash
          ).void
        end
        attr_writer :phone_number_range

        sig do
          params(
            activation_ranges:
              T::Array[
                Telnyx::PortingOrders::PhoneNumberBlockCreateParams::ActivationRange::OrHash
              ],
            phone_number_range:
              Telnyx::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the activation ranges for this porting phone number block. The
          # activation range must be within the block range and should not overlap with
          # other activation ranges.
          activation_ranges:,
          phone_number_range:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              activation_ranges:
                T::Array[
                  Telnyx::PortingOrders::PhoneNumberBlockCreateParams::ActivationRange
                ],
              phone_number_range:
                Telnyx::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class ActivationRange < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PhoneNumberBlockCreateParams::ActivationRange,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the end of the activation range. It must be no more than the end of
          # the extension range.
          sig { returns(String) }
          attr_accessor :end_at

          # Specifies the start of the activation range. Must be greater or equal the start
          # of the extension range.
          sig { returns(String) }
          attr_accessor :start_at

          sig do
            params(end_at: String, start_at: String).returns(T.attached_class)
          end
          def self.new(
            # Specifies the end of the activation range. It must be no more than the end of
            # the extension range.
            end_at:,
            # Specifies the start of the activation range. Must be greater or equal the start
            # of the extension range.
            start_at:
          )
          end

          sig { override.returns({ end_at: String, start_at: String }) }
          def to_hash
          end
        end

        class PhoneNumberRange < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the end of the phone number range for this porting phone number block.
          sig { returns(String) }
          attr_accessor :end_at

          # Specifies the start of the phone number range for this porting phone number
          # block.
          sig { returns(String) }
          attr_accessor :start_at

          sig do
            params(end_at: String, start_at: String).returns(T.attached_class)
          end
          def self.new(
            # Specifies the end of the phone number range for this porting phone number block.
            end_at:,
            # Specifies the start of the phone number range for this porting phone number
            # block.
            start_at:
          )
          end

          sig { override.returns({ end_at: String, start_at: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
