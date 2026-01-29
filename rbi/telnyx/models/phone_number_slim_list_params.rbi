# typed: strong

module Telnyx
  module Models
    class PhoneNumberSlimListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PhoneNumberSlimListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[tag],
      # filter[phone_number], filter[status], filter[country_iso_alpha2],
      # filter[connection_id], filter[voice.connection_name],
      # filter[voice.usage_payment_method], filter[billing_group_id],
      # filter[emergency_address_id], filter[customer_reference], filter[number_type],
      # filter[source]
      sig { returns(T.nilable(Telnyx::PhoneNumberSlimListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::PhoneNumberSlimListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Include the connection associated with the phone number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_connection

      sig { params(include_connection: T::Boolean).void }
      attr_writer :include_connection

      # Include the tags associated with the phone number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_tags

      sig { params(include_tags: T::Boolean).void }
      attr_writer :include_tags

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
        returns(T.nilable(Telnyx::PhoneNumberSlimListParams::Sort::OrSymbol))
      end
      attr_reader :sort

      sig do
        params(sort: Telnyx::PhoneNumberSlimListParams::Sort::OrSymbol).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::PhoneNumberSlimListParams::Filter::OrHash,
          include_connection: T::Boolean,
          include_tags: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::PhoneNumberSlimListParams::Sort::OrSymbol,
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
        # Include the connection associated with the phone number.
        include_connection: nil,
        # Include the tags associated with the phone number.
        include_tags: nil,
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
            filter: Telnyx::PhoneNumberSlimListParams::Filter,
            include_connection: T::Boolean,
            include_tags: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::PhoneNumberSlimListParams::Sort::OrSymbol,
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
              Telnyx::PhoneNumberSlimListParams::Filter,
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
              Telnyx::PhoneNumberSlimListParams::Filter::CountryISOAlpha2::Variants
            )
          )
        end
        attr_reader :country_iso_alpha2

        sig do
          params(
            country_iso_alpha2:
              Telnyx::PhoneNumberSlimListParams::Filter::CountryISOAlpha2::Variants
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
          returns(
            T.nilable(Telnyx::PhoneNumberSlimListParams::Filter::NumberType)
          )
        end
        attr_reader :number_type

        sig do
          params(
            number_type:
              Telnyx::PhoneNumberSlimListParams::Filter::NumberType::OrHash
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
            T.nilable(
              Telnyx::PhoneNumberSlimListParams::Filter::Source::OrSymbol
            )
          )
        end
        attr_reader :source

        sig do
          params(
            source: Telnyx::PhoneNumberSlimListParams::Filter::Source::OrSymbol
          ).void
        end
        attr_writer :source

        # Filter by phone number status.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumberSlimListParams::Filter::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::PhoneNumberSlimListParams::Filter::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Filter by phone number tags. (This requires the include_tags param)
        sig { returns(T.nilable(String)) }
        attr_reader :tag

        sig { params(tag: String).void }
        attr_writer :tag

        # Filter by voice connection name pattern matching (requires include_connection
        # param).
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumberSlimListParams::Filter::VoiceConnectionName
            )
          )
        end
        attr_reader :voice_connection_name

        sig do
          params(
            voice_connection_name:
              Telnyx::PhoneNumberSlimListParams::Filter::VoiceConnectionName::OrHash
          ).void
        end
        attr_writer :voice_connection_name

        # Filter by usage_payment_method.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumberSlimListParams::Filter::VoiceUsagePaymentMethod::OrSymbol
            )
          )
        end
        attr_reader :voice_usage_payment_method

        sig do
          params(
            voice_usage_payment_method:
              Telnyx::PhoneNumberSlimListParams::Filter::VoiceUsagePaymentMethod::OrSymbol
          ).void
        end
        attr_writer :voice_usage_payment_method

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
              Telnyx::PhoneNumberSlimListParams::Filter::CountryISOAlpha2::Variants,
            customer_reference: String,
            emergency_address_id: String,
            number_type:
              Telnyx::PhoneNumberSlimListParams::Filter::NumberType::OrHash,
            phone_number: String,
            source: Telnyx::PhoneNumberSlimListParams::Filter::Source::OrSymbol,
            status: Telnyx::PhoneNumberSlimListParams::Filter::Status::OrSymbol,
            tag: String,
            voice_connection_name:
              Telnyx::PhoneNumberSlimListParams::Filter::VoiceConnectionName::OrHash,
            voice_usage_payment_method:
              Telnyx::PhoneNumberSlimListParams::Filter::VoiceUsagePaymentMethod::OrSymbol
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
          # Filter by phone number tags. (This requires the include_tags param)
          tag: nil,
          # Filter by voice connection name pattern matching (requires include_connection
          # param).
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
              country_iso_alpha2:
                Telnyx::PhoneNumberSlimListParams::Filter::CountryISOAlpha2::Variants,
              customer_reference: String,
              emergency_address_id: String,
              number_type:
                Telnyx::PhoneNumberSlimListParams::Filter::NumberType,
              phone_number: String,
              source:
                Telnyx::PhoneNumberSlimListParams::Filter::Source::OrSymbol,
              status:
                Telnyx::PhoneNumberSlimListParams::Filter::Status::OrSymbol,
              tag: String,
              voice_connection_name:
                Telnyx::PhoneNumberSlimListParams::Filter::VoiceConnectionName,
              voice_usage_payment_method:
                Telnyx::PhoneNumberSlimListParams::Filter::VoiceUsagePaymentMethod::OrSymbol
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
                Telnyx::PhoneNumberSlimListParams::Filter::CountryISOAlpha2::Variants
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
                Telnyx::PhoneNumberSlimListParams::Filter::NumberType,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter phone numbers by phone number type.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq::OrSymbol
              )
            )
          end
          attr_reader :eq

          sig do
            params(
              eq:
                Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq::OrSymbol
            ).void
          end
          attr_writer :eq

          # Filter phone numbers by phone number type.
          sig do
            params(
              eq:
                Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq::OrSymbol
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
                  Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq::OrSymbol
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
                  Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOCAL =
              T.let(
                :local,
                Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq::TaggedSymbol
              )
            NATIONAL =
              T.let(
                :national,
                Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq::TaggedSymbol
              )
            TOLL_FREE =
              T.let(
                :toll_free,
                Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq::TaggedSymbol
              )
            MOBILE =
              T.let(
                :mobile,
                Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq::TaggedSymbol
              )
            SHARED_COST =
              T.let(
                :shared_cost,
                Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumberSlimListParams::Filter::NumberType::Eq::TaggedSymbol
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
              T.all(Symbol, Telnyx::PhoneNumberSlimListParams::Filter::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTED =
            T.let(
              :ported,
              Telnyx::PhoneNumberSlimListParams::Filter::Source::TaggedSymbol
            )
          PURCHASED =
            T.let(
              :purchased,
              Telnyx::PhoneNumberSlimListParams::Filter::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumberSlimListParams::Filter::Source::TaggedSymbol
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
              T.all(Symbol, Telnyx::PhoneNumberSlimListParams::Filter::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PURCHASE_PENDING =
            T.let(
              :"purchase-pending",
              Telnyx::PhoneNumberSlimListParams::Filter::Status::TaggedSymbol
            )
          PURCHASE_FAILED =
            T.let(
              :"purchase-failed",
              Telnyx::PhoneNumberSlimListParams::Filter::Status::TaggedSymbol
            )
          PORT_PENDING =
            T.let(
              :port_pending,
              Telnyx::PhoneNumberSlimListParams::Filter::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Telnyx::PhoneNumberSlimListParams::Filter::Status::TaggedSymbol
            )
          DELETED =
            T.let(
              :deleted,
              Telnyx::PhoneNumberSlimListParams::Filter::Status::TaggedSymbol
            )
          PORT_FAILED =
            T.let(
              :"port-failed",
              Telnyx::PhoneNumberSlimListParams::Filter::Status::TaggedSymbol
            )
          EMERGENCY_ONLY =
            T.let(
              :"emergency-only",
              Telnyx::PhoneNumberSlimListParams::Filter::Status::TaggedSymbol
            )
          PORTED_OUT =
            T.let(
              :"ported-out",
              Telnyx::PhoneNumberSlimListParams::Filter::Status::TaggedSymbol
            )
          PORT_OUT_PENDING =
            T.let(
              :"port-out-pending",
              Telnyx::PhoneNumberSlimListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumberSlimListParams::Filter::Status::TaggedSymbol
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
                Telnyx::PhoneNumberSlimListParams::Filter::VoiceConnectionName,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter contains connection name. Requires at least three characters and the
          # include_connection param.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # Filter ends with connection name. Requires at least three characters and the
          # include_connection param.
          sig { returns(T.nilable(String)) }
          attr_reader :ends_with

          sig { params(ends_with: String).void }
          attr_writer :ends_with

          # Filter by connection name.
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          # Filter starts with connection name. Requires at least three characters and the
          # include_connection param.
          sig { returns(T.nilable(String)) }
          attr_reader :starts_with

          sig { params(starts_with: String).void }
          attr_writer :starts_with

          # Filter by voice connection name pattern matching (requires include_connection
          # param).
          sig do
            params(
              contains: String,
              ends_with: String,
              eq: String,
              starts_with: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter contains connection name. Requires at least three characters and the
            # include_connection param.
            contains: nil,
            # Filter ends with connection name. Requires at least three characters and the
            # include_connection param.
            ends_with: nil,
            # Filter by connection name.
            eq: nil,
            # Filter starts with connection name. Requires at least three characters and the
            # include_connection param.
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
                Telnyx::PhoneNumberSlimListParams::Filter::VoiceUsagePaymentMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAY_PER_MINUTE =
            T.let(
              :"pay-per-minute",
              Telnyx::PhoneNumberSlimListParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
            )
          CHANNEL =
            T.let(
              :channel,
              Telnyx::PhoneNumberSlimListParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumberSlimListParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
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
            T.all(Symbol, Telnyx::PhoneNumberSlimListParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURCHASED_AT =
          T.let(
            :purchased_at,
            Telnyx::PhoneNumberSlimListParams::Sort::TaggedSymbol
          )
        PHONE_NUMBER =
          T.let(
            :phone_number,
            Telnyx::PhoneNumberSlimListParams::Sort::TaggedSymbol
          )
        CONNECTION_NAME =
          T.let(
            :connection_name,
            Telnyx::PhoneNumberSlimListParams::Sort::TaggedSymbol
          )
        USAGE_PAYMENT_METHOD =
          T.let(
            :usage_payment_method,
            Telnyx::PhoneNumberSlimListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PhoneNumberSlimListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
