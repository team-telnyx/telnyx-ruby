# typed: strong

module Telnyx
  module Models
    module PhoneNumberBlocks
      class JobListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumberBlocks::JobListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally: filter[type],
        # filter[status]
        sig do
          returns(T.nilable(Telnyx::PhoneNumberBlocks::JobListParams::Filter))
        end
        attr_reader :filter

        sig do
          params(
            filter: Telnyx::PhoneNumberBlocks::JobListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(T.nilable(Telnyx::PhoneNumberBlocks::JobListParams::Page))
        end
        attr_reader :page

        sig do
          params(
            page: Telnyx::PhoneNumberBlocks::JobListParams::Page::OrHash
          ).void
        end
        attr_writer :page

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        sig do
          returns(
            T.nilable(Telnyx::PhoneNumberBlocks::JobListParams::Sort::OrSymbol)
          )
        end
        attr_reader :sort

        sig do
          params(
            sort: Telnyx::PhoneNumberBlocks::JobListParams::Sort::OrSymbol
          ).void
        end
        attr_writer :sort

        sig do
          params(
            filter: Telnyx::PhoneNumberBlocks::JobListParams::Filter::OrHash,
            page: Telnyx::PhoneNumberBlocks::JobListParams::Page::OrHash,
            sort: Telnyx::PhoneNumberBlocks::JobListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally: filter[type],
          # filter[status]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::PhoneNumberBlocks::JobListParams::Filter,
              page: Telnyx::PhoneNumberBlocks::JobListParams::Page,
              sort: Telnyx::PhoneNumberBlocks::JobListParams::Sort::OrSymbol,
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
                Telnyx::PhoneNumberBlocks::JobListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the status of the background job.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Identifies the type of the background job.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Consolidated filter parameter (deepObject style). Originally: filter[type],
          # filter[status]
          sig do
            params(
              status:
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status::OrSymbol,
              type:
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the status of the background job.
            status: nil,
            # Identifies the type of the background job.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                status:
                  Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status::OrSymbol,
                type:
                  Telnyx::PhoneNumberBlocks::JobListParams::Filter::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Identifies the status of the background job.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :in_progress,
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status::TaggedSymbol
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
                T.all(
                  Symbol,
                  Telnyx::PhoneNumberBlocks::JobListParams::Filter::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DELETE_PHONE_NUMBER_BLOCK =
              T.let(
                :delete_phone_number_block,
                Telnyx::PhoneNumberBlocks::JobListParams::Filter::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumberBlocks::JobListParams::Filter::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumberBlocks::JobListParams::Page,
                Telnyx::Internal::AnyHash
              )
            end

          # The page number to load
          sig { returns(T.nilable(Integer)) }
          attr_reader :number

          sig { params(number: Integer).void }
          attr_writer :number

          # The size of the page
          sig { returns(T.nilable(Integer)) }
          attr_reader :size

          sig { params(size: Integer).void }
          attr_writer :size

          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          sig do
            params(number: Integer, size: Integer).returns(T.attached_class)
          end
          def self.new(
            # The page number to load
            number: nil,
            # The size of the page
            size: nil
          )
          end

          sig { override.returns({ number: Integer, size: Integer }) }
          def to_hash
          end
        end

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        module Sort
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PhoneNumberBlocks::JobListParams::Sort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED_AT =
            T.let(
              :created_at,
              Telnyx::PhoneNumberBlocks::JobListParams::Sort::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumberBlocks::JobListParams::Sort::TaggedSymbol
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
