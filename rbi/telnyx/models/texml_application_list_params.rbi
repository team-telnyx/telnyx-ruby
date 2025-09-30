# typed: strong

module Telnyx
  module Models
    class TexmlApplicationListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TexmlApplicationListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[outbound_voice_profile_id], filter[friendly_name]
      sig { returns(T.nilable(Telnyx::TexmlApplicationListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::TexmlApplicationListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::TexmlApplicationListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::TexmlApplicationListParams::Page::OrHash).void
      end
      attr_writer :page

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>friendly_name</code>: sorts the result by the
      #     <code>friendly_name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-friendly_name</code>: sorts the result by the
      #     <code>friendly_name</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      sig do
        returns(T.nilable(Telnyx::TexmlApplicationListParams::Sort::OrSymbol))
      end
      attr_reader :sort

      sig do
        params(sort: Telnyx::TexmlApplicationListParams::Sort::OrSymbol).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::TexmlApplicationListParams::Filter::OrHash,
          page: Telnyx::TexmlApplicationListParams::Page::OrHash,
          sort: Telnyx::TexmlApplicationListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[outbound_voice_profile_id], filter[friendly_name]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>friendly_name</code>: sorts the result by the
        #     <code>friendly_name</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-friendly_name</code>: sorts the result by the
        #     <code>friendly_name</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::TexmlApplicationListParams::Filter,
            page: Telnyx::TexmlApplicationListParams::Page,
            sort: Telnyx::TexmlApplicationListParams::Sort::OrSymbol,
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
              Telnyx::TexmlApplicationListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # If present, applications with <code>friendly_name</code> containing the given
        # value will be returned. Matching is not case-sensitive. Requires at least three
        # characters.
        sig { returns(T.nilable(String)) }
        attr_reader :friendly_name

        sig { params(friendly_name: String).void }
        attr_writer :friendly_name

        # Identifies the associated outbound voice profile.
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_voice_profile_id

        sig { params(outbound_voice_profile_id: String).void }
        attr_writer :outbound_voice_profile_id

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[outbound_voice_profile_id], filter[friendly_name]
        sig do
          params(
            friendly_name: String,
            outbound_voice_profile_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # If present, applications with <code>friendly_name</code> containing the given
          # value will be returned. Matching is not case-sensitive. Requires at least three
          # characters.
          friendly_name: nil,
          # Identifies the associated outbound voice profile.
          outbound_voice_profile_id: nil
        )
        end

        sig do
          override.returns(
            { friendly_name: String, outbound_voice_profile_id: String }
          )
        end
        def to_hash
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TexmlApplicationListParams::Page,
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

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>friendly_name</code>: sorts the result by the
      #     <code>friendly_name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-friendly_name</code>: sorts the result by the
      #     <code>friendly_name</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TexmlApplicationListParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            Telnyx::TexmlApplicationListParams::Sort::TaggedSymbol
          )
        FRIENDLY_NAME =
          T.let(
            :friendly_name,
            Telnyx::TexmlApplicationListParams::Sort::TaggedSymbol
          )
        ACTIVE =
          T.let(:active, Telnyx::TexmlApplicationListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::TexmlApplicationListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
