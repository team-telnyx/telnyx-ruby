# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class JobListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::JobListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally: filter[type]
        sig { returns(T.nilable(Telnyx::PhoneNumbers::JobListParams::Filter)) }
        attr_reader :filter

        sig do
          params(
            filter: Telnyx::PhoneNumbers::JobListParams::Filter::OrHash
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
            T.nilable(Telnyx::PhoneNumbers::JobListParams::Sort::OrSymbol)
          )
        end
        attr_reader :sort

        sig do
          params(sort: Telnyx::PhoneNumbers::JobListParams::Sort::OrSymbol).void
        end
        attr_writer :sort

        sig do
          params(
            filter: Telnyx::PhoneNumbers::JobListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::PhoneNumbers::JobListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally: filter[type]
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
              filter: Telnyx::PhoneNumbers::JobListParams::Filter,
              page_number: Integer,
              page_size: Integer,
              sort: Telnyx::PhoneNumbers::JobListParams::Sort::OrSymbol,
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
                Telnyx::PhoneNumbers::JobListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the type of the background job.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::JobListParams::Filter::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type: Telnyx::PhoneNumbers::JobListParams::Filter::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Consolidated filter parameter (deepObject style). Originally: filter[type]
          sig do
            params(
              type: Telnyx::PhoneNumbers::JobListParams::Filter::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the type of the background job.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                type:
                  Telnyx::PhoneNumbers::JobListParams::Filter::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Identifies the type of the background job.
          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::PhoneNumbers::JobListParams::Filter::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UPDATE_EMERGENCY_SETTINGS =
              T.let(
                :update_emergency_settings,
                Telnyx::PhoneNumbers::JobListParams::Filter::Type::TaggedSymbol
              )
            DELETE_PHONE_NUMBERS =
              T.let(
                :delete_phone_numbers,
                Telnyx::PhoneNumbers::JobListParams::Filter::Type::TaggedSymbol
              )
            UPDATE_PHONE_NUMBERS =
              T.let(
                :update_phone_numbers,
                Telnyx::PhoneNumbers::JobListParams::Filter::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::JobListParams::Filter::Type::TaggedSymbol
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
              T.all(Symbol, Telnyx::PhoneNumbers::JobListParams::Sort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED_AT =
            T.let(
              :created_at,
              Telnyx::PhoneNumbers::JobListParams::Sort::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::PhoneNumbers::JobListParams::Sort::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
