# typed: strong

module Telnyx
  module Models
    class CallControlApplicationListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallControlApplicationListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[application_name][contains], filter[outbound.outbound_voice_profile_id],
      # filter[leg_id], filter[application_session_id], filter[connection_id],
      # filter[product], filter[failed], filter[from], filter[to], filter[name],
      # filter[type], filter[occurred_at][eq/gt/gte/lt/lte], filter[status]
      sig do
        returns(T.nilable(Telnyx::CallControlApplicationListParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::CallControlApplicationListParams::Filter::OrHash
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

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>connection_name</code>: sorts the result by the
      #     <code>connection_name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-connection_name</code>: sorts the result by the
      #     <code>connection_name</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      sig do
        returns(
          T.nilable(Telnyx::CallControlApplicationListParams::Sort::OrSymbol)
        )
      end
      attr_reader :sort

      sig do
        params(
          sort: Telnyx::CallControlApplicationListParams::Sort::OrSymbol
        ).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::CallControlApplicationListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::CallControlApplicationListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[application_name][contains], filter[outbound.outbound_voice_profile_id],
        # filter[leg_id], filter[application_session_id], filter[connection_id],
        # filter[product], filter[failed], filter[from], filter[to], filter[name],
        # filter[type], filter[occurred_at][eq/gt/gte/lt/lte], filter[status]
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>connection_name</code>: sorts the result by the
        #     <code>connection_name</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-connection_name</code>: sorts the result by the
        #     <code>connection_name</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::CallControlApplicationListParams::Filter,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::CallControlApplicationListParams::Sort::OrSymbol,
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
              Telnyx::CallControlApplicationListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Application name filters
        sig do
          returns(
            T.nilable(
              Telnyx::CallControlApplicationListParams::Filter::ApplicationName
            )
          )
        end
        attr_reader :application_name

        sig do
          params(
            application_name:
              Telnyx::CallControlApplicationListParams::Filter::ApplicationName::OrHash
          ).void
        end
        attr_writer :application_name

        # The unique identifier of the call session. A session may include multiple call
        # leg events.
        sig { returns(T.nilable(String)) }
        attr_reader :application_session_id

        sig { params(application_session_id: String).void }
        attr_writer :application_session_id

        # The unique identifier of the conection.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # Delivery failed or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :failed

        sig { params(failed: T::Boolean).void }
        attr_writer :failed

        # Filter by From number.
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # The unique identifier of an individual call leg.
        sig { returns(T.nilable(String)) }
        attr_reader :leg_id

        sig { params(leg_id: String).void }
        attr_writer :leg_id

        # If present, conferences will be filtered to those with a matching `name`
        # attribute. Matching is case-sensitive
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Event occurred_at filters
        sig do
          returns(
            T.nilable(
              Telnyx::CallControlApplicationListParams::Filter::OccurredAt
            )
          )
        end
        attr_reader :occurred_at

        sig do
          params(
            occurred_at:
              Telnyx::CallControlApplicationListParams::Filter::OccurredAt::OrHash
          ).void
        end
        attr_writer :occurred_at

        # Identifies the associated outbound voice profile.
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_outbound_voice_profile_id

        sig { params(outbound_outbound_voice_profile_id: String).void }
        attr_writer :outbound_outbound_voice_profile_id

        # Filter by product.
        sig do
          returns(
            T.nilable(
              Telnyx::CallControlApplicationListParams::Filter::Product::OrSymbol
            )
          )
        end
        attr_reader :product

        sig do
          params(
            product:
              Telnyx::CallControlApplicationListParams::Filter::Product::OrSymbol
          ).void
        end
        attr_writer :product

        # If present, conferences will be filtered by status.
        sig do
          returns(
            T.nilable(
              Telnyx::CallControlApplicationListParams::Filter::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::CallControlApplicationListParams::Filter::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Filter by To number.
        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        # Event type
        sig do
          returns(
            T.nilable(
              Telnyx::CallControlApplicationListParams::Filter::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Telnyx::CallControlApplicationListParams::Filter::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[application_name][contains], filter[outbound.outbound_voice_profile_id],
        # filter[leg_id], filter[application_session_id], filter[connection_id],
        # filter[product], filter[failed], filter[from], filter[to], filter[name],
        # filter[type], filter[occurred_at][eq/gt/gte/lt/lte], filter[status]
        sig do
          params(
            application_name:
              Telnyx::CallControlApplicationListParams::Filter::ApplicationName::OrHash,
            application_session_id: String,
            connection_id: String,
            failed: T::Boolean,
            from: String,
            leg_id: String,
            name: String,
            occurred_at:
              Telnyx::CallControlApplicationListParams::Filter::OccurredAt::OrHash,
            outbound_outbound_voice_profile_id: String,
            product:
              Telnyx::CallControlApplicationListParams::Filter::Product::OrSymbol,
            status:
              Telnyx::CallControlApplicationListParams::Filter::Status::OrSymbol,
            to: String,
            type:
              Telnyx::CallControlApplicationListParams::Filter::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Application name filters
          application_name: nil,
          # The unique identifier of the call session. A session may include multiple call
          # leg events.
          application_session_id: nil,
          # The unique identifier of the conection.
          connection_id: nil,
          # Delivery failed or not.
          failed: nil,
          # Filter by From number.
          from: nil,
          # The unique identifier of an individual call leg.
          leg_id: nil,
          # If present, conferences will be filtered to those with a matching `name`
          # attribute. Matching is case-sensitive
          name: nil,
          # Event occurred_at filters
          occurred_at: nil,
          # Identifies the associated outbound voice profile.
          outbound_outbound_voice_profile_id: nil,
          # Filter by product.
          product: nil,
          # If present, conferences will be filtered by status.
          status: nil,
          # Filter by To number.
          to: nil,
          # Event type
          type: nil
        )
        end

        sig do
          override.returns(
            {
              application_name:
                Telnyx::CallControlApplicationListParams::Filter::ApplicationName,
              application_session_id: String,
              connection_id: String,
              failed: T::Boolean,
              from: String,
              leg_id: String,
              name: String,
              occurred_at:
                Telnyx::CallControlApplicationListParams::Filter::OccurredAt,
              outbound_outbound_voice_profile_id: String,
              product:
                Telnyx::CallControlApplicationListParams::Filter::Product::OrSymbol,
              status:
                Telnyx::CallControlApplicationListParams::Filter::Status::OrSymbol,
              to: String,
              type:
                Telnyx::CallControlApplicationListParams::Filter::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        class ApplicationName < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CallControlApplicationListParams::Filter::ApplicationName,
                Telnyx::Internal::AnyHash
              )
            end

          # If present, applications with <code>application_name</code> containing the given
          # value will be returned. Matching is not case-sensitive. Requires at least three
          # characters.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # Application name filters
          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # If present, applications with <code>application_name</code> containing the given
            # value will be returned. Matching is not case-sensitive. Requires at least three
            # characters.
            contains: nil
          )
          end

          sig { override.returns({ contains: String }) }
          def to_hash
          end
        end

        class OccurredAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CallControlApplicationListParams::Filter::OccurredAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Event occurred_at: equal
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          # Event occurred_at: greater than
          sig { returns(T.nilable(String)) }
          attr_reader :gt

          sig { params(gt: String).void }
          attr_writer :gt

          # Event occurred_at: greater than or equal
          sig { returns(T.nilable(String)) }
          attr_reader :gte

          sig { params(gte: String).void }
          attr_writer :gte

          # Event occurred_at: lower than
          sig { returns(T.nilable(String)) }
          attr_reader :lt

          sig { params(lt: String).void }
          attr_writer :lt

          # Event occurred_at: lower than or equal
          sig { returns(T.nilable(String)) }
          attr_reader :lte

          sig { params(lte: String).void }
          attr_writer :lte

          # Event occurred_at filters
          sig do
            params(
              eq: String,
              gt: String,
              gte: String,
              lt: String,
              lte: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Event occurred_at: equal
            eq: nil,
            # Event occurred_at: greater than
            gt: nil,
            # Event occurred_at: greater than or equal
            gte: nil,
            # Event occurred_at: lower than
            lt: nil,
            # Event occurred_at: lower than or equal
            lte: nil
          )
          end

          sig do
            override.returns(
              { eq: String, gt: String, gte: String, lt: String, lte: String }
            )
          end
          def to_hash
          end
        end

        # Filter by product.
        module Product
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallControlApplicationListParams::Filter::Product
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_CONTROL =
            T.let(
              :call_control,
              Telnyx::CallControlApplicationListParams::Filter::Product::TaggedSymbol
            )
          FAX =
            T.let(
              :fax,
              Telnyx::CallControlApplicationListParams::Filter::Product::TaggedSymbol
            )
          TEXML =
            T.let(
              :texml,
              Telnyx::CallControlApplicationListParams::Filter::Product::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallControlApplicationListParams::Filter::Product::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # If present, conferences will be filtered by status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallControlApplicationListParams::Filter::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INIT =
            T.let(
              :init,
              Telnyx::CallControlApplicationListParams::Filter::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::CallControlApplicationListParams::Filter::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::CallControlApplicationListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallControlApplicationListParams::Filter::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Event type
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallControlApplicationListParams::Filter::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMAND =
            T.let(
              :command,
              Telnyx::CallControlApplicationListParams::Filter::Type::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::CallControlApplicationListParams::Filter::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallControlApplicationListParams::Filter::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>connection_name</code>: sorts the result by the
      #     <code>connection_name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-connection_name</code>: sorts the result by the
      #     <code>connection_name</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CallControlApplicationListParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            Telnyx::CallControlApplicationListParams::Sort::TaggedSymbol
          )
        CONNECTION_NAME =
          T.let(
            :connection_name,
            Telnyx::CallControlApplicationListParams::Sort::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            Telnyx::CallControlApplicationListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallControlApplicationListParams::Sort::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
