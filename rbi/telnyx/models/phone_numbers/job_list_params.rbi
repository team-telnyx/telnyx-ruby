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

        # Consolidated filter parameter (deepObject style). Originally: filter[type],
        # filter[phone_number], filter[phone_number][], filter[status][]
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
          # Consolidated filter parameter (deepObject style). Originally: filter[type],
          # filter[phone_number], filter[phone_number][], filter[status][]
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

          # Returns jobs that targeted any of the supplied account-owned phone numbers.
          # Values beginning with `+` must contain 1 to 20 digits after the plus sign. The
          # 10-value limit is enforced before duplicate values are removed. Unmatched or
          # non-account-owned identifiers return an empty result. Phone-number filtering
          # must be enabled for the account.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::JobListParams::Filter::PhoneNumber::Variants
              )
            )
          end
          attr_reader :phone_number

          sig do
            params(
              phone_number:
                Telnyx::PhoneNumbers::JobListParams::Filter::PhoneNumber::Variants
            ).void
          end
          attr_writer :phone_number

          # Returns jobs with any of the supplied statuses. Use repeated `filter[status][]`
          # parameters; scalar and comma-separated status values are not accepted.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::PhoneNumbers::JobListParams::Filter::Status::OrSymbol
                ]
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                T::Array[
                  Telnyx::PhoneNumbers::JobListParams::Filter::Status::OrSymbol
                ]
            ).void
          end
          attr_writer :status

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

          # Consolidated filter parameter (deepObject style). Originally: filter[type],
          # filter[phone_number], filter[phone_number][], filter[status][]
          sig do
            params(
              phone_number:
                Telnyx::PhoneNumbers::JobListParams::Filter::PhoneNumber::Variants,
              status:
                T::Array[
                  Telnyx::PhoneNumbers::JobListParams::Filter::Status::OrSymbol
                ],
              type: Telnyx::PhoneNumbers::JobListParams::Filter::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Returns jobs that targeted any of the supplied account-owned phone numbers.
            # Values beginning with `+` must contain 1 to 20 digits after the plus sign. The
            # 10-value limit is enforced before duplicate values are removed. Unmatched or
            # non-account-owned identifiers return an empty result. Phone-number filtering
            # must be enabled for the account.
            phone_number: nil,
            # Returns jobs with any of the supplied statuses. Use repeated `filter[status][]`
            # parameters; scalar and comma-separated status values are not accepted.
            status: nil,
            # Identifies the type of the background job.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                phone_number:
                  Telnyx::PhoneNumbers::JobListParams::Filter::PhoneNumber::Variants,
                status:
                  T::Array[
                    Telnyx::PhoneNumbers::JobListParams::Filter::Status::OrSymbol
                  ],
                type:
                  Telnyx::PhoneNumbers::JobListParams::Filter::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Returns jobs that targeted any of the supplied account-owned phone numbers.
          # Values beginning with `+` must contain 1 to 20 digits after the plus sign. The
          # 10-value limit is enforced before duplicate values are removed. Unmatched or
          # non-account-owned identifiers return an empty result. Phone-number filtering
          # must be enabled for the account.
          module PhoneNumber
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, T::Array[String]) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::JobListParams::Filter::PhoneNumber::Variants
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

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PhoneNumbers::JobListParams::Filter::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::PhoneNumbers::JobListParams::Filter::Status::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :in_progress,
                Telnyx::PhoneNumbers::JobListParams::Filter::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::PhoneNumbers::JobListParams::Filter::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::PhoneNumbers::JobListParams::Filter::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                Telnyx::PhoneNumbers::JobListParams::Filter::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::JobListParams::Filter::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
