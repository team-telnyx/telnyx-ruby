# typed: strong

module Telnyx
  module Models
    class CallEventListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::CallEventListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[application_name][contains], filter[outbound.outbound_voice_profile_id],
      # filter[leg_id], filter[application_session_id], filter[connection_id],
      # filter[product], filter[failed], filter[from], filter[to], filter[name],
      # filter[type], filter[occurred_at][eq/gt/gte/lt/lte], filter[status]
      sig { returns(T.nilable(Telnyx::CallEventListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::CallEventListParams::Filter::OrHash).void }
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[after],
      # page[before], page[limit], page[size], page[number]
      sig { returns(T.nilable(Telnyx::CallEventListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::CallEventListParams::Page::OrHash).void }
      attr_writer :page

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter: Telnyx::CallEventListParams::Filter::OrHash,
          page: Telnyx::CallEventListParams::Page::OrHash,
          page_number: Integer,
          page_size: Integer,
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
        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[before], page[limit], page[size], page[number]
        page: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::CallEventListParams::Filter,
            page: Telnyx::CallEventListParams::Page,
            page_number: Integer,
            page_size: Integer,
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
              Telnyx::CallEventListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Application name filters
        sig do
          returns(
            T.nilable(Telnyx::CallEventListParams::Filter::ApplicationName)
          )
        end
        attr_reader :application_name

        sig do
          params(
            application_name:
              Telnyx::CallEventListParams::Filter::ApplicationName::OrHash
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
          returns(T.nilable(Telnyx::CallEventListParams::Filter::OccurredAt))
        end
        attr_reader :occurred_at

        sig do
          params(
            occurred_at: Telnyx::CallEventListParams::Filter::OccurredAt::OrHash
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
            T.nilable(Telnyx::CallEventListParams::Filter::Product::OrSymbol)
          )
        end
        attr_reader :product

        sig do
          params(
            product: Telnyx::CallEventListParams::Filter::Product::OrSymbol
          ).void
        end
        attr_writer :product

        # If present, conferences will be filtered by status.
        sig do
          returns(
            T.nilable(Telnyx::CallEventListParams::Filter::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::CallEventListParams::Filter::Status::OrSymbol
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
            T.nilable(Telnyx::CallEventListParams::Filter::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(type: Telnyx::CallEventListParams::Filter::Type::OrSymbol).void
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
              Telnyx::CallEventListParams::Filter::ApplicationName::OrHash,
            application_session_id: String,
            connection_id: String,
            failed: T::Boolean,
            from: String,
            leg_id: String,
            name: String,
            occurred_at:
              Telnyx::CallEventListParams::Filter::OccurredAt::OrHash,
            outbound_outbound_voice_profile_id: String,
            product: Telnyx::CallEventListParams::Filter::Product::OrSymbol,
            status: Telnyx::CallEventListParams::Filter::Status::OrSymbol,
            to: String,
            type: Telnyx::CallEventListParams::Filter::Type::OrSymbol
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
                Telnyx::CallEventListParams::Filter::ApplicationName,
              application_session_id: String,
              connection_id: String,
              failed: T::Boolean,
              from: String,
              leg_id: String,
              name: String,
              occurred_at: Telnyx::CallEventListParams::Filter::OccurredAt,
              outbound_outbound_voice_profile_id: String,
              product: Telnyx::CallEventListParams::Filter::Product::OrSymbol,
              status: Telnyx::CallEventListParams::Filter::Status::OrSymbol,
              to: String,
              type: Telnyx::CallEventListParams::Filter::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        class ApplicationName < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CallEventListParams::Filter::ApplicationName,
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
                Telnyx::CallEventListParams::Filter::OccurredAt,
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
              T.all(Symbol, Telnyx::CallEventListParams::Filter::Product)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_CONTROL =
            T.let(
              :call_control,
              Telnyx::CallEventListParams::Filter::Product::TaggedSymbol
            )
          FAX =
            T.let(
              :fax,
              Telnyx::CallEventListParams::Filter::Product::TaggedSymbol
            )
          TEXML =
            T.let(
              :texml,
              Telnyx::CallEventListParams::Filter::Product::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallEventListParams::Filter::Product::TaggedSymbol
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
              T.all(Symbol, Telnyx::CallEventListParams::Filter::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INIT =
            T.let(
              :init,
              Telnyx::CallEventListParams::Filter::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::CallEventListParams::Filter::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::CallEventListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallEventListParams::Filter::Status::TaggedSymbol
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
              T.all(Symbol, Telnyx::CallEventListParams::Filter::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMAND =
            T.let(
              :command,
              Telnyx::CallEventListParams::Filter::Type::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::CallEventListParams::Filter::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::CallEventListParams::Filter::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::CallEventListParams::Page, Telnyx::Internal::AnyHash)
          end

        # Opaque identifier of next page
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Opaque identifier of previous page
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Limit of records per single page
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[before], page[limit], page[size], page[number]
        sig do
          params(after: String, before: String, limit: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # Opaque identifier of next page
          after: nil,
          # Opaque identifier of previous page
          before: nil,
          # Limit of records per single page
          limit: nil
        )
        end

        sig do
          override.returns({ after: String, before: String, limit: Integer })
        end
        def to_hash
        end
      end
    end
  end
end
