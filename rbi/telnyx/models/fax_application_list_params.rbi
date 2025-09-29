# typed: strong

module Telnyx
  module Models
    class FaxApplicationListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::FaxApplicationListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[application_name][contains], filter[outbound_voice_profile_id]
      sig { returns(T.nilable(Telnyx::FaxApplicationListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::FaxApplicationListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::FaxApplicationListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::FaxApplicationListParams::Page::OrHash).void }
      attr_writer :page

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>application_name</code>: sorts the result by the
      #     <code>application_name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-application_name</code>: sorts the result by the
      #     <code>application_name</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      sig do
        returns(T.nilable(Telnyx::FaxApplicationListParams::Sort::OrSymbol))
      end
      attr_reader :sort

      sig do
        params(sort: Telnyx::FaxApplicationListParams::Sort::OrSymbol).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::FaxApplicationListParams::Filter::OrHash,
          page: Telnyx::FaxApplicationListParams::Page::OrHash,
          sort: Telnyx::FaxApplicationListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[application_name][contains], filter[outbound_voice_profile_id]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>application_name</code>: sorts the result by the
        #     <code>application_name</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-application_name</code>: sorts the result by the
        #     <code>application_name</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::FaxApplicationListParams::Filter,
            page: Telnyx::FaxApplicationListParams::Page,
            sort: Telnyx::FaxApplicationListParams::Sort::OrSymbol,
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
              Telnyx::FaxApplicationListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Application name filtering operations
        sig do
          returns(
            T.nilable(Telnyx::FaxApplicationListParams::Filter::ApplicationName)
          )
        end
        attr_reader :application_name

        sig do
          params(
            application_name:
              Telnyx::FaxApplicationListParams::Filter::ApplicationName::OrHash
          ).void
        end
        attr_writer :application_name

        # Identifies the associated outbound voice profile.
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_voice_profile_id

        sig { params(outbound_voice_profile_id: String).void }
        attr_writer :outbound_voice_profile_id

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[application_name][contains], filter[outbound_voice_profile_id]
        sig do
          params(
            application_name:
              Telnyx::FaxApplicationListParams::Filter::ApplicationName::OrHash,
            outbound_voice_profile_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Application name filtering operations
          application_name: nil,
          # Identifies the associated outbound voice profile.
          outbound_voice_profile_id: nil
        )
        end

        sig do
          override.returns(
            {
              application_name:
                Telnyx::FaxApplicationListParams::Filter::ApplicationName,
              outbound_voice_profile_id: String
            }
          )
        end
        def to_hash
        end

        class ApplicationName < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::FaxApplicationListParams::Filter::ApplicationName,
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

          # Application name filtering operations
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
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::FaxApplicationListParams::Page,
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

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
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

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>application_name</code>: sorts the result by the
      #     <code>application_name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-application_name</code>: sorts the result by the
      #     <code>application_name</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::FaxApplicationListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            Telnyx::FaxApplicationListParams::Sort::TaggedSymbol
          )
        APPLICATION_NAME =
          T.let(
            :application_name,
            Telnyx::FaxApplicationListParams::Sort::TaggedSymbol
          )
        ACTIVE =
          T.let(:active, Telnyx::FaxApplicationListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::FaxApplicationListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
