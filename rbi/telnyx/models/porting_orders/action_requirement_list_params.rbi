# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class ActionRequirementListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::ActionRequirementListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally: filter[id][in][],
        # filter[requirement_type_id], filter[action_type], filter[status]
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::ActionRequirementListParams::Filter
            )
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::PortingOrders::ActionRequirementListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::ActionRequirementListParams::Page)
          )
        end
        attr_reader :page

        sig do
          params(
            page:
              Telnyx::PortingOrders::ActionRequirementListParams::Page::OrHash
          ).void
        end
        attr_writer :page

        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::ActionRequirementListParams::Sort)
          )
        end
        attr_reader :sort

        sig do
          params(
            sort:
              Telnyx::PortingOrders::ActionRequirementListParams::Sort::OrHash
          ).void
        end
        attr_writer :sort

        sig do
          params(
            filter:
              Telnyx::PortingOrders::ActionRequirementListParams::Filter::OrHash,
            page:
              Telnyx::PortingOrders::ActionRequirementListParams::Page::OrHash,
            sort:
              Telnyx::PortingOrders::ActionRequirementListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally: filter[id][in][],
          # filter[requirement_type_id], filter[action_type], filter[status]
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
              filter:
                Telnyx::PortingOrders::ActionRequirementListParams::Filter,
              page: Telnyx::PortingOrders::ActionRequirementListParams::Page,
              sort: Telnyx::PortingOrders::ActionRequirementListParams::Sort,
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
                Telnyx::PortingOrders::ActionRequirementListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter action requirements by a list of IDs
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :id

          sig { params(id: T::Array[String]).void }
          attr_writer :id

          # Filter action requirements by action type
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::ActionType::OrSymbol
              )
            )
          end
          attr_reader :action_type

          sig do
            params(
              action_type:
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::ActionType::OrSymbol
            ).void
          end
          attr_writer :action_type

          # Filter action requirements by requirement type ID
          sig { returns(T.nilable(String)) }
          attr_reader :requirement_type_id

          sig { params(requirement_type_id: String).void }
          attr_writer :requirement_type_id

          # Filter action requirements by status
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Consolidated filter parameter (deepObject style). Originally: filter[id][in][],
          # filter[requirement_type_id], filter[action_type], filter[status]
          sig do
            params(
              id: T::Array[String],
              action_type:
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::ActionType::OrSymbol,
              requirement_type_id: String,
              status:
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter action requirements by a list of IDs
            id: nil,
            # Filter action requirements by action type
            action_type: nil,
            # Filter action requirements by requirement type ID
            requirement_type_id: nil,
            # Filter action requirements by status
            status: nil
          )
          end

          sig do
            override.returns(
              {
                id: T::Array[String],
                action_type:
                  Telnyx::PortingOrders::ActionRequirementListParams::Filter::ActionType::OrSymbol,
                requirement_type_id: String,
                status:
                  Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Filter action requirements by action type
          module ActionType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PortingOrders::ActionRequirementListParams::Filter::ActionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AU_ID_VERIFICATION =
              T.let(
                :au_id_verification,
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::ActionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::ActionRequirementListParams::Filter::ActionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Filter action requirements by status
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::ActionRequirementListParams::Filter::Status::TaggedSymbol
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
                Telnyx::PortingOrders::ActionRequirementListParams::Page,
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

        class Sort < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::ActionRequirementListParams::Sort,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value::OrSymbol
              )
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value::OrSymbol
            ).void
          end
          attr_writer :value

          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sig do
            params(
              value:
                Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value::OrSymbol
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
                  Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value::OrSymbol
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
                  Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED_AT =
              T.let(
                :created_at,
                Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value::TaggedSymbol
              )
            CREATED_AT_DESC =
              T.let(
                :"-created_at",
                Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value::TaggedSymbol
              )
            UPDATED_AT =
              T.let(
                :updated_at,
                Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value::TaggedSymbol
              )
            UPDATED_AT_DESC =
              T.let(
                :"-updated_at",
                Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::ActionRequirementListParams::Sort::Value::TaggedSymbol
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
end
