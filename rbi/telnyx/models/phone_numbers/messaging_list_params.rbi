# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class MessagingListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::MessagingListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by messaging profile ID.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_messaging_profile_id

        sig { params(filter_messaging_profile_id: String).void }
        attr_writer :filter_messaging_profile_id

        # Filter by exact phone number (supports comma-separated list).
        sig { returns(T.nilable(String)) }
        attr_reader :filter_phone_number

        sig { params(filter_phone_number: String).void }
        attr_writer :filter_phone_number

        # Filter by phone number substring.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_phone_number_contains

        sig { params(filter_phone_number_contains: String).void }
        attr_writer :filter_phone_number_contains

        # Filter by phone number type.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::MessagingListParams::FilterType::OrSymbol
            )
          )
        end
        attr_reader :filter_type

        sig do
          params(
            filter_type:
              Telnyx::PhoneNumbers::MessagingListParams::FilterType::OrSymbol
          ).void
        end
        attr_writer :filter_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Sort by phone number.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::MessagingListParams::SortPhoneNumber::OrSymbol
            )
          )
        end
        attr_reader :sort_phone_number

        sig do
          params(
            sort_phone_number:
              Telnyx::PhoneNumbers::MessagingListParams::SortPhoneNumber::OrSymbol
          ).void
        end
        attr_writer :sort_phone_number

        sig do
          params(
            filter_messaging_profile_id: String,
            filter_phone_number: String,
            filter_phone_number_contains: String,
            filter_type:
              Telnyx::PhoneNumbers::MessagingListParams::FilterType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort_phone_number:
              Telnyx::PhoneNumbers::MessagingListParams::SortPhoneNumber::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by messaging profile ID.
          filter_messaging_profile_id: nil,
          # Filter by exact phone number (supports comma-separated list).
          filter_phone_number: nil,
          # Filter by phone number substring.
          filter_phone_number_contains: nil,
          # Filter by phone number type.
          filter_type: nil,
          page_number: nil,
          page_size: nil,
          # Sort by phone number.
          sort_phone_number: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter_messaging_profile_id: String,
              filter_phone_number: String,
              filter_phone_number_contains: String,
              filter_type:
                Telnyx::PhoneNumbers::MessagingListParams::FilterType::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              sort_phone_number:
                Telnyx::PhoneNumbers::MessagingListParams::SortPhoneNumber::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by phone number type.
        module FilterType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PhoneNumbers::MessagingListParams::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOLLFREE =
            T.let(
              :tollfree,
              Telnyx::PhoneNumbers::MessagingListParams::FilterType::TaggedSymbol
            )
          LONGCODE =
            T.let(
              :longcode,
              Telnyx::PhoneNumbers::MessagingListParams::FilterType::TaggedSymbol
            )
          SHORTCODE =
            T.let(
              :shortcode,
              Telnyx::PhoneNumbers::MessagingListParams::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::MessagingListParams::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sort by phone number.
        module SortPhoneNumber
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PhoneNumbers::MessagingListParams::SortPhoneNumber
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              Telnyx::PhoneNumbers::MessagingListParams::SortPhoneNumber::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              Telnyx::PhoneNumbers::MessagingListParams::SortPhoneNumber::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::MessagingListParams::SortPhoneNumber::TaggedSymbol
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
