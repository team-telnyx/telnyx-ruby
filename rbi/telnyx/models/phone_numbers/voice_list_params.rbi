# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class VoiceListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::VoiceListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number], filter[connection_name], filter[customer_reference],
        # filter[voice.usage_payment_method]
        sig do
          returns(T.nilable(Telnyx::PhoneNumbers::VoiceListParams::Filter))
        end
        attr_reader :filter

        sig do
          params(
            filter: Telnyx::PhoneNumbers::VoiceListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        sig do
          returns(
            T.nilable(Telnyx::PhoneNumbers::VoiceListParams::Sort::OrSymbol)
          )
        end
        attr_reader :sort

        sig do
          params(
            sort: Telnyx::PhoneNumbers::VoiceListParams::Sort::OrSymbol
          ).void
        end
        attr_writer :sort

        sig do
          params(
            filter: Telnyx::PhoneNumbers::VoiceListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::PhoneNumbers::VoiceListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[phone_number], filter[connection_name], filter[customer_reference],
          # filter[voice.usage_payment_method]
          filter: nil,
          page_number: nil,
          page_size: nil,
          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::PhoneNumbers::VoiceListParams::Filter,
              page_number: Integer,
              page_size: Integer,
              sort: Telnyx::PhoneNumbers::VoiceListParams::Sort::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Filter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::VoiceListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by connection name pattern matching.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::VoiceListParams::Filter::ConnectionName
              )
            )
          end
          attr_reader :connection_name

          sig do
            params(
              connection_name:
                Telnyx::PhoneNumbers::VoiceListParams::Filter::ConnectionName::OrHash
            ).void
          end
          attr_writer :connection_name

          # Filter numbers via the customer_reference set.
          sig { returns(T.nilable(String)) }
          attr_reader :customer_reference

          sig { params(customer_reference: String).void }
          attr_writer :customer_reference

          # Filter by phone number. Requires at least three digits. Non-numerical characters
          # will result in no values being returned.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Filter by usage_payment_method.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod::OrSymbol
              )
            )
          end
          attr_reader :voice_usage_payment_method

          sig do
            params(
              voice_usage_payment_method:
                Telnyx::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod::OrSymbol
            ).void
          end
          attr_writer :voice_usage_payment_method

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[phone_number], filter[connection_name], filter[customer_reference],
          # filter[voice.usage_payment_method]
          sig do
            params(
              connection_name:
                Telnyx::PhoneNumbers::VoiceListParams::Filter::ConnectionName::OrHash,
              customer_reference: String,
              phone_number: String,
              voice_usage_payment_method:
                Telnyx::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by connection name pattern matching.
            connection_name: nil,
            # Filter numbers via the customer_reference set.
            customer_reference: nil,
            # Filter by phone number. Requires at least three digits. Non-numerical characters
            # will result in no values being returned.
            phone_number: nil,
            # Filter by usage_payment_method.
            voice_usage_payment_method: nil
          )
          end

          sig do
            override.returns(
              {
                connection_name:
                  Telnyx::PhoneNumbers::VoiceListParams::Filter::ConnectionName,
                customer_reference: String,
                phone_number: String,
                voice_usage_payment_method:
                  Telnyx::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod::OrSymbol
              }
            )
          end
          def to_hash
          end

          class ConnectionName < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::PhoneNumbers::VoiceListParams::Filter::ConnectionName,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter contains connection name. Requires at least three characters.
            sig { returns(T.nilable(String)) }
            attr_reader :contains

            sig { params(contains: String).void }
            attr_writer :contains

            # Filter by connection name pattern matching.
            sig { params(contains: String).returns(T.attached_class) }
            def self.new(
              # Filter contains connection name. Requires at least three characters.
              contains: nil
            )
            end

            sig { override.returns({ contains: String }) }
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
                  Telnyx::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAY_PER_MINUTE =
              T.let(
                :"pay-per-minute",
                Telnyx::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
              )
            CHANNEL =
              T.let(
                :channel,
                Telnyx::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        module Sort
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PhoneNumbers::VoiceListParams::Sort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PURCHASED_AT =
            T.let(
              :purchased_at,
              Telnyx::PhoneNumbers::VoiceListParams::Sort::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              Telnyx::PhoneNumbers::VoiceListParams::Sort::TaggedSymbol
            )
          CONNECTION_NAME =
            T.let(
              :connection_name,
              Telnyx::PhoneNumbers::VoiceListParams::Sort::TaggedSymbol
            )
          USAGE_PAYMENT_METHOD =
            T.let(
              :usage_payment_method,
              Telnyx::PhoneNumbers::VoiceListParams::Sort::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::VoiceListParams::Sort::TaggedSymbol
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
