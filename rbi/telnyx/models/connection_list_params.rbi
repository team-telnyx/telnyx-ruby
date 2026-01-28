# typed: strong

module Telnyx
  module Models
    class ConnectionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ConnectionListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[connection_name], filter[fqdn], filter[outbound_voice_profile_id],
      # filter[outbound.outbound_voice_profile_id]
      sig { returns(T.nilable(Telnyx::ConnectionListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::ConnectionListParams::Filter::OrHash).void }
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
      sig { returns(T.nilable(Telnyx::ConnectionListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::ConnectionListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::ConnectionListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::ConnectionListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[connection_name], filter[fqdn], filter[outbound_voice_profile_id],
        # filter[outbound.outbound_voice_profile_id]
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
            filter: Telnyx::ConnectionListParams::Filter,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::ConnectionListParams::Sort::OrSymbol,
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
              Telnyx::ConnectionListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by connection_name using nested operations
        sig do
          returns(
            T.nilable(Telnyx::ConnectionListParams::Filter::ConnectionName)
          )
        end
        attr_reader :connection_name

        sig do
          params(
            connection_name:
              Telnyx::ConnectionListParams::Filter::ConnectionName::OrHash
          ).void
        end
        attr_writer :connection_name

        # If present, connections with an `fqdn` that equals the given value will be
        # returned. Matching is case-sensitive, and the full string must match.
        sig { returns(T.nilable(String)) }
        attr_reader :fqdn

        sig { params(fqdn: String).void }
        attr_writer :fqdn

        # Identifies the associated outbound voice profile.
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_voice_profile_id

        sig { params(outbound_voice_profile_id: String).void }
        attr_writer :outbound_voice_profile_id

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[connection_name], filter[fqdn], filter[outbound_voice_profile_id],
        # filter[outbound.outbound_voice_profile_id]
        sig do
          params(
            connection_name:
              Telnyx::ConnectionListParams::Filter::ConnectionName::OrHash,
            fqdn: String,
            outbound_voice_profile_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by connection_name using nested operations
          connection_name: nil,
          # If present, connections with an `fqdn` that equals the given value will be
          # returned. Matching is case-sensitive, and the full string must match.
          fqdn: nil,
          # Identifies the associated outbound voice profile.
          outbound_voice_profile_id: nil
        )
        end

        sig do
          override.returns(
            {
              connection_name:
                Telnyx::ConnectionListParams::Filter::ConnectionName,
              fqdn: String,
              outbound_voice_profile_id: String
            }
          )
        end
        def to_hash
        end

        class ConnectionName < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ConnectionListParams::Filter::ConnectionName,
                Telnyx::Internal::AnyHash
              )
            end

          # If present, connections with <code>connection_name</code> containing the given
          # value will be returned. Matching is not case-sensitive. Requires at least three
          # characters.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # Filter by connection_name using nested operations
          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # If present, connections with <code>connection_name</code> containing the given
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
          T.type_alias { T.all(Symbol, Telnyx::ConnectionListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, Telnyx::ConnectionListParams::Sort::TaggedSymbol)
        CONNECTION_NAME =
          T.let(
            :connection_name,
            Telnyx::ConnectionListParams::Sort::TaggedSymbol
          )
        ACTIVE =
          T.let(:active, Telnyx::ConnectionListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ConnectionListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
