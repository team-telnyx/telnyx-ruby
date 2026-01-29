# typed: strong

module Telnyx
  module Models
    class PhoneNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PhoneNumberListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[tag],
      # filter[phone_number], filter[status], filter[country_iso_alpha2],
      # filter[connection_id], filter[voice.connection_name],
      # filter[voice.usage_payment_method], filter[billing_group_id],
      # filter[emergency_address_id], filter[customer_reference], filter[number_type],
      # filter[source]
      sig { returns(T.nilable(Telnyx::PhoneNumberListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::PhoneNumberListParams::Filter::OrHash).void }
      attr_writer :filter

      # Although it is an infrequent occurrence, due to the highly distributed nature of
      # the Telnyx platform, it is possible that there will be an issue when loading in
      # Messaging Profile information. As such, when this parameter is set to `true` and
      # an error in fetching this information occurs, messaging profile related fields
      # will be omitted in the response and an error message will be included instead of
      # returning a 503 error.
      sig do
        returns(
          T.nilable(
            Telnyx::PhoneNumberListParams::HandleMessagingProfileError::OrSymbol
          )
        )
      end
      attr_reader :handle_messaging_profile_error

      sig do
        params(
          handle_messaging_profile_error:
            Telnyx::PhoneNumberListParams::HandleMessagingProfileError::OrSymbol
        ).void
      end
      attr_writer :handle_messaging_profile_error

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
      sig { returns(T.nilable(Telnyx::PhoneNumberListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::PhoneNumberListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::PhoneNumberListParams::Filter::OrHash,
          handle_messaging_profile_error:
            Telnyx::PhoneNumberListParams::HandleMessagingProfileError::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::PhoneNumberListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[tag],
        # filter[phone_number], filter[status], filter[country_iso_alpha2],
        # filter[connection_id], filter[voice.connection_name],
        # filter[voice.usage_payment_method], filter[billing_group_id],
        # filter[emergency_address_id], filter[customer_reference], filter[number_type],
        # filter[source]
        filter: nil,
        # Although it is an infrequent occurrence, due to the highly distributed nature of
        # the Telnyx platform, it is possible that there will be an issue when loading in
        # Messaging Profile information. As such, when this parameter is set to `true` and
        # an error in fetching this information occurs, messaging profile related fields
        # will be omitted in the response and an error message will be included instead of
        # returning a 503 error.
        handle_messaging_profile_error: nil,
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
            filter: Telnyx::PhoneNumberListParams::Filter,
            handle_messaging_profile_error:
              Telnyx::PhoneNumberListParams::HandleMessagingProfileError::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::PhoneNumberListParams::Sort::OrSymbol,
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
              Telnyx::PhoneNumberListParams::Filter,
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

        # Filter by phone number country ISO alpha-2 code. Can be a single value or an
        # array of values.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumberListParams::Filter::CountryISOAlpha2::Variants
            )
          )
        end
        attr_reader :country_iso_alpha2

        sig do
          params(
            country_iso_alpha2:
              Telnyx::PhoneNumberListParams::Filter::CountryISOAlpha2::Variants
          ).void
        end
        attr_writer :country_iso_alpha2

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

        # Filter phone numbers by phone number type.
        sig do
          returns(T.nilable(Telnyx::PhoneNumberListParams::Filter::NumberType))
        end
        attr_reader :number_type

        sig do
          params(
            number_type:
              Telnyx::PhoneNumberListParams::Filter::NumberType::OrHash
          ).void
        end
        attr_writer :number_type

        # Filter by phone number. Requires at least three digits. Non-numerical characters
        # will result in no values being returned.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Filter phone numbers by their source. Use 'ported' for numbers ported from other
        # carriers, or 'purchased' for numbers bought directly from Telnyx.
        sig do
          returns(
            T.nilable(Telnyx::PhoneNumberListParams::Filter::Source::OrSymbol)
          )
        end
        attr_reader :source

        sig do
          params(
            source: Telnyx::PhoneNumberListParams::Filter::Source::OrSymbol
          ).void
        end
        attr_writer :source

        # Filter by phone number status.
        sig do
          returns(
            T.nilable(Telnyx::PhoneNumberListParams::Filter::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::PhoneNumberListParams::Filter::Status::OrSymbol
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
              Telnyx::PhoneNumberListParams::Filter::VoiceConnectionName
            )
          )
        end
        attr_reader :voice_connection_name

        sig do
          params(
            voice_connection_name:
              Telnyx::PhoneNumberListParams::Filter::VoiceConnectionName::OrHash
          ).void
        end
        attr_writer :voice_connection_name

        # Filter by usage_payment_method.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod::OrSymbol
            )
          )
        end
        attr_reader :voice_usage_payment_method

        sig do
          params(
            voice_usage_payment_method:
              Telnyx::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod::OrSymbol
          ).void
        end
        attr_writer :voice_usage_payment_method

        # When set to 'true', filters for phone numbers that do not have any tags applied.
        # All other values are ignored.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumberListParams::Filter::WithoutTags::OrSymbol
            )
          )
        end
        attr_reader :without_tags

        sig do
          params(
            without_tags:
              Telnyx::PhoneNumberListParams::Filter::WithoutTags::OrSymbol
          ).void
        end
        attr_writer :without_tags

        # Consolidated filter parameter (deepObject style). Originally: filter[tag],
        # filter[phone_number], filter[status], filter[country_iso_alpha2],
        # filter[connection_id], filter[voice.connection_name],
        # filter[voice.usage_payment_method], filter[billing_group_id],
        # filter[emergency_address_id], filter[customer_reference], filter[number_type],
        # filter[source]
        sig do
          params(
            billing_group_id: String,
            connection_id: String,
            country_iso_alpha2:
              Telnyx::PhoneNumberListParams::Filter::CountryISOAlpha2::Variants,
            customer_reference: String,
            emergency_address_id: String,
            number_type:
              Telnyx::PhoneNumberListParams::Filter::NumberType::OrHash,
            phone_number: String,
            source: Telnyx::PhoneNumberListParams::Filter::Source::OrSymbol,
            status: Telnyx::PhoneNumberListParams::Filter::Status::OrSymbol,
            tag: String,
            voice_connection_name:
              Telnyx::PhoneNumberListParams::Filter::VoiceConnectionName::OrHash,
            voice_usage_payment_method:
              Telnyx::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod::OrSymbol,
            without_tags:
              Telnyx::PhoneNumberListParams::Filter::WithoutTags::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by the billing_group_id associated with phone numbers. To filter to only
          # phone numbers that have no billing group associated them, set the value of this
          # filter to the string 'null'.
          billing_group_id: nil,
          # Filter by connection_id.
          connection_id: nil,
          # Filter by phone number country ISO alpha-2 code. Can be a single value or an
          # array of values.
          country_iso_alpha2: nil,
          # Filter numbers via the customer_reference set.
          customer_reference: nil,
          # Filter by the emergency_address_id associated with phone numbers. To filter only
          # phone numbers that have no emergency address associated with them, set the value
          # of this filter to the string 'null'.
          emergency_address_id: nil,
          # Filter phone numbers by phone number type.
          number_type: nil,
          # Filter by phone number. Requires at least three digits. Non-numerical characters
          # will result in no values being returned.
          phone_number: nil,
          # Filter phone numbers by their source. Use 'ported' for numbers ported from other
          # carriers, or 'purchased' for numbers bought directly from Telnyx.
          source: nil,
          # Filter by phone number status.
          status: nil,
          # Filter by phone number tags.
          tag: nil,
          # Filter by voice connection name pattern matching.
          voice_connection_name: nil,
          # Filter by usage_payment_method.
          voice_usage_payment_method: nil,
          # When set to 'true', filters for phone numbers that do not have any tags applied.
          # All other values are ignored.
          without_tags: nil
        )
        end

        sig do
          override.returns(
            {
              billing_group_id: String,
              connection_id: String,
              country_iso_alpha2:
                Telnyx::PhoneNumberListParams::Filter::CountryISOAlpha2::Variants,
              customer_reference: String,
              emergency_address_id: String,
              number_type: Telnyx::PhoneNumberListParams::Filter::NumberType,
              phone_number: String,
              source: Telnyx::PhoneNumberListParams::Filter::Source::OrSymbol,
              status: Telnyx::PhoneNumberListParams::Filter::Status::OrSymbol,
              tag: String,
              voice_connection_name:
                Telnyx::PhoneNumberListParams::Filter::VoiceConnectionName,
              voice_usage_payment_method:
                Telnyx::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod::OrSymbol,
              without_tags:
                Telnyx::PhoneNumberListParams::Filter::WithoutTags::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Filter by phone number country ISO alpha-2 code. Can be a single value or an
        # array of values.
        module CountryISOAlpha2
          extend Telnyx::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Array[String]) }

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumberListParams::Filter::CountryISOAlpha2::Variants
              ]
            )
          end
          def self.variants
          end

          StringArray =
            T.let(
              Telnyx::Internal::Type::ArrayOf[String],
              Telnyx::Internal::Type::Converter
            )
        end

        class NumberType < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumberListParams::Filter::NumberType,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter phone numbers by phone number type.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumberListParams::Filter::NumberType::Eq::OrSymbol
              )
            )
          end
          attr_reader :eq

          sig do
            params(
              eq:
                Telnyx::PhoneNumberListParams::Filter::NumberType::Eq::OrSymbol
            ).void
          end
          attr_writer :eq

          # Filter phone numbers by phone number type.
          sig do
            params(
              eq:
                Telnyx::PhoneNumberListParams::Filter::NumberType::Eq::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter phone numbers by phone number type.
            eq: nil
          )
          end

          sig do
            override.returns(
              {
                eq:
                  Telnyx::PhoneNumberListParams::Filter::NumberType::Eq::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Filter phone numbers by phone number type.
          module Eq
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PhoneNumberListParams::Filter::NumberType::Eq
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOCAL =
              T.let(
                :local,
                Telnyx::PhoneNumberListParams::Filter::NumberType::Eq::TaggedSymbol
              )
            NATIONAL =
              T.let(
                :national,
                Telnyx::PhoneNumberListParams::Filter::NumberType::Eq::TaggedSymbol
              )
            TOLL_FREE =
              T.let(
                :toll_free,
                Telnyx::PhoneNumberListParams::Filter::NumberType::Eq::TaggedSymbol
              )
            MOBILE =
              T.let(
                :mobile,
                Telnyx::PhoneNumberListParams::Filter::NumberType::Eq::TaggedSymbol
              )
            SHARED_COST =
              T.let(
                :shared_cost,
                Telnyx::PhoneNumberListParams::Filter::NumberType::Eq::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumberListParams::Filter::NumberType::Eq::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Filter phone numbers by their source. Use 'ported' for numbers ported from other
        # carriers, or 'purchased' for numbers bought directly from Telnyx.
        module Source
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PhoneNumberListParams::Filter::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTED =
            T.let(
              :ported,
              Telnyx::PhoneNumberListParams::Filter::Source::TaggedSymbol
            )
          PURCHASED =
            T.let(
              :purchased,
              Telnyx::PhoneNumberListParams::Filter::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumberListParams::Filter::Source::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter by phone number status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PhoneNumberListParams::Filter::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PURCHASE_PENDING =
            T.let(
              :"purchase-pending",
              Telnyx::PhoneNumberListParams::Filter::Status::TaggedSymbol
            )
          PURCHASE_FAILED =
            T.let(
              :"purchase-failed",
              Telnyx::PhoneNumberListParams::Filter::Status::TaggedSymbol
            )
          PORT_PENDING =
            T.let(
              :"port-pending",
              Telnyx::PhoneNumberListParams::Filter::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Telnyx::PhoneNumberListParams::Filter::Status::TaggedSymbol
            )
          DELETED =
            T.let(
              :deleted,
              Telnyx::PhoneNumberListParams::Filter::Status::TaggedSymbol
            )
          PORT_FAILED =
            T.let(
              :"port-failed",
              Telnyx::PhoneNumberListParams::Filter::Status::TaggedSymbol
            )
          EMERGENCY_ONLY =
            T.let(
              :"emergency-only",
              Telnyx::PhoneNumberListParams::Filter::Status::TaggedSymbol
            )
          PORTED_OUT =
            T.let(
              :"ported-out",
              Telnyx::PhoneNumberListParams::Filter::Status::TaggedSymbol
            )
          PORT_OUT_PENDING =
            T.let(
              :"port-out-pending",
              Telnyx::PhoneNumberListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumberListParams::Filter::Status::TaggedSymbol
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
                Telnyx::PhoneNumberListParams::Filter::VoiceConnectionName,
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
                Telnyx::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAY_PER_MINUTE =
            T.let(
              :"pay-per-minute",
              Telnyx::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
            )
          CHANNEL =
            T.let(
              :channel,
              Telnyx::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # When set to 'true', filters for phone numbers that do not have any tags applied.
        # All other values are ignored.
        module WithoutTags
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PhoneNumberListParams::Filter::WithoutTags)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              Telnyx::PhoneNumberListParams::Filter::WithoutTags::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              Telnyx::PhoneNumberListParams::Filter::WithoutTags::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumberListParams::Filter::WithoutTags::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Although it is an infrequent occurrence, due to the highly distributed nature of
      # the Telnyx platform, it is possible that there will be an issue when loading in
      # Messaging Profile information. As such, when this parameter is set to `true` and
      # an error in fetching this information occurs, messaging profile related fields
      # will be omitted in the response and an error message will be included instead of
      # returning a 503 error.
      module HandleMessagingProfileError
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::PhoneNumberListParams::HandleMessagingProfileError
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            Telnyx::PhoneNumberListParams::HandleMessagingProfileError::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            Telnyx::PhoneNumberListParams::HandleMessagingProfileError::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PhoneNumberListParams::HandleMessagingProfileError::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Specifies the sort order for results. If not given, results are sorted by
      # created_at in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PhoneNumberListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURCHASED_AT =
          T.let(
            :purchased_at,
            Telnyx::PhoneNumberListParams::Sort::TaggedSymbol
          )
        PHONE_NUMBER =
          T.let(
            :phone_number,
            Telnyx::PhoneNumberListParams::Sort::TaggedSymbol
          )
        CONNECTION_NAME =
          T.let(
            :connection_name,
            Telnyx::PhoneNumberListParams::Sort::TaggedSymbol
          )
        USAGE_PAYMENT_METHOD =
          T.let(
            :usage_payment_method,
            Telnyx::PhoneNumberListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PhoneNumberListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
