# typed: strong

module Telnyx
  module Models
    class CustomerServiceRecordListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CustomerServiceRecordListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[phone_number][eq], filter[phone_number][in][], filter[status][eq],
      # filter[status][in][], filter[created_at][lt], filter[created_at][gt]
      sig do
        returns(T.nilable(Telnyx::CustomerServiceRecordListParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::CustomerServiceRecordListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::CustomerServiceRecordListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::CustomerServiceRecordListParams::Page::OrHash).void
      end
      attr_writer :page

      # Consolidated sort parameter (deepObject style). Originally: sort[value]
      sig { returns(T.nilable(Telnyx::CustomerServiceRecordListParams::Sort)) }
      attr_reader :sort

      sig do
        params(sort: Telnyx::CustomerServiceRecordListParams::Sort::OrHash).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::CustomerServiceRecordListParams::Filter::OrHash,
          page: Telnyx::CustomerServiceRecordListParams::Page::OrHash,
          sort: Telnyx::CustomerServiceRecordListParams::Sort::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number][eq], filter[phone_number][in][], filter[status][eq],
        # filter[status][in][], filter[created_at][lt], filter[created_at][gt]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::CustomerServiceRecordListParams::Filter,
            page: Telnyx::CustomerServiceRecordListParams::Page,
            sort: Telnyx::CustomerServiceRecordListParams::Sort,
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
              Telnyx::CustomerServiceRecordListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::CustomerServiceRecordListParams::Filter::CreatedAt
            )
          )
        end
        attr_reader :created_at

        sig do
          params(
            created_at:
              Telnyx::CustomerServiceRecordListParams::Filter::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        sig do
          returns(
            T.nilable(
              Telnyx::CustomerServiceRecordListParams::Filter::PhoneNumber
            )
          )
        end
        attr_reader :phone_number

        sig do
          params(
            phone_number:
              Telnyx::CustomerServiceRecordListParams::Filter::PhoneNumber::OrHash
          ).void
        end
        attr_writer :phone_number

        sig do
          returns(
            T.nilable(Telnyx::CustomerServiceRecordListParams::Filter::Status)
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::CustomerServiceRecordListParams::Filter::Status::OrHash
          ).void
        end
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number][eq], filter[phone_number][in][], filter[status][eq],
        # filter[status][in][], filter[created_at][lt], filter[created_at][gt]
        sig do
          params(
            created_at:
              Telnyx::CustomerServiceRecordListParams::Filter::CreatedAt::OrHash,
            phone_number:
              Telnyx::CustomerServiceRecordListParams::Filter::PhoneNumber::OrHash,
            status:
              Telnyx::CustomerServiceRecordListParams::Filter::Status::OrHash
          ).returns(T.attached_class)
        end
        def self.new(created_at: nil, phone_number: nil, status: nil)
        end

        sig do
          override.returns(
            {
              created_at:
                Telnyx::CustomerServiceRecordListParams::Filter::CreatedAt,
              phone_number:
                Telnyx::CustomerServiceRecordListParams::Filter::PhoneNumber,
              status: Telnyx::CustomerServiceRecordListParams::Filter::Status
            }
          )
        end
        def to_hash
        end

        class CreatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CustomerServiceRecordListParams::Filter::CreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Filters records to those created after a specific date.
          sig { returns(T.nilable(Time)) }
          attr_reader :gt

          sig { params(gt: Time).void }
          attr_writer :gt

          # Filters records to those created before a specific date.
          sig { returns(T.nilable(Time)) }
          attr_reader :lt

          sig { params(lt: Time).void }
          attr_writer :lt

          sig { params(gt: Time, lt: Time).returns(T.attached_class) }
          def self.new(
            # Filters records to those created after a specific date.
            gt: nil,
            # Filters records to those created before a specific date.
            lt: nil
          )
          end

          sig { override.returns({ gt: Time, lt: Time }) }
          def to_hash
          end
        end

        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CustomerServiceRecordListParams::Filter::PhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          # Filters records to those with a specified number.
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          # Filters records to those with at least one number in the list.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :in_

          sig { params(in_: T::Array[String]).void }
          attr_writer :in_

          sig do
            params(eq: String, in_: T::Array[String]).returns(T.attached_class)
          end
          def self.new(
            # Filters records to those with a specified number.
            eq: nil,
            # Filters records to those with at least one number in the list.
            in_: nil
          )
          end

          sig { override.returns({ eq: String, in_: T::Array[String] }) }
          def to_hash
          end
        end

        class Status < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CustomerServiceRecordListParams::Filter::Status,
                Telnyx::Internal::AnyHash
              )
            end

          # Filters records to those with a specific status.
          sig do
            returns(
              T.nilable(
                Telnyx::CustomerServiceRecordListParams::Filter::Status::Eq::OrSymbol
              )
            )
          end
          attr_reader :eq

          sig do
            params(
              eq:
                Telnyx::CustomerServiceRecordListParams::Filter::Status::Eq::OrSymbol
            ).void
          end
          attr_writer :eq

          # Filters records to those with a least one status in the list.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::CustomerServiceRecordListParams::Filter::Status::In::OrSymbol
                ]
              )
            )
          end
          attr_reader :in_

          sig do
            params(
              in_:
                T::Array[
                  Telnyx::CustomerServiceRecordListParams::Filter::Status::In::OrSymbol
                ]
            ).void
          end
          attr_writer :in_

          sig do
            params(
              eq:
                Telnyx::CustomerServiceRecordListParams::Filter::Status::Eq::OrSymbol,
              in_:
                T::Array[
                  Telnyx::CustomerServiceRecordListParams::Filter::Status::In::OrSymbol
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Filters records to those with a specific status.
            eq: nil,
            # Filters records to those with a least one status in the list.
            in_: nil
          )
          end

          sig do
            override.returns(
              {
                eq:
                  Telnyx::CustomerServiceRecordListParams::Filter::Status::Eq::OrSymbol,
                in_:
                  T::Array[
                    Telnyx::CustomerServiceRecordListParams::Filter::Status::In::OrSymbol
                  ]
              }
            )
          end
          def to_hash
          end

          # Filters records to those with a specific status.
          module Eq
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CustomerServiceRecordListParams::Filter::Status::Eq
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::CustomerServiceRecordListParams::Filter::Status::Eq::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::CustomerServiceRecordListParams::Filter::Status::Eq::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::CustomerServiceRecordListParams::Filter::Status::Eq::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CustomerServiceRecordListParams::Filter::Status::Eq::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module In
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CustomerServiceRecordListParams::Filter::Status::In
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::CustomerServiceRecordListParams::Filter::Status::In::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::CustomerServiceRecordListParams::Filter::Status::In::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::CustomerServiceRecordListParams::Filter::Status::In::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CustomerServiceRecordListParams::Filter::Status::In::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CustomerServiceRecordListParams::Page,
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
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
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

      class Sort < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CustomerServiceRecordListParams::Sort,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        sig do
          returns(
            T.nilable(
              Telnyx::CustomerServiceRecordListParams::Sort::Value::OrSymbol
            )
          )
        end
        attr_reader :value

        sig do
          params(
            value:
              Telnyx::CustomerServiceRecordListParams::Sort::Value::OrSymbol
          ).void
        end
        attr_writer :value

        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sig do
          params(
            value:
              Telnyx::CustomerServiceRecordListParams::Sort::Value::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          value: nil
        )
        end

        sig do
          override.returns(
            {
              value:
                Telnyx::CustomerServiceRecordListParams::Sort::Value::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        module Value
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CustomerServiceRecordListParams::Sort::Value
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED_AT =
            T.let(
              :created_at,
              Telnyx::CustomerServiceRecordListParams::Sort::Value::TaggedSymbol
            )
          CREATED_AT_DESC =
            T.let(
              :"-created_at",
              Telnyx::CustomerServiceRecordListParams::Sort::Value::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CustomerServiceRecordListParams::Sort::Value::TaggedSymbol
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
