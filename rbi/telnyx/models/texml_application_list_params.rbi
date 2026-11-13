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
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::TexmlApplicationListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[outbound_voice_profile_id], filter[friendly_name]
        filter: nil,
        page_number: nil,
        page_size: nil,
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
            page_number: Integer,
            page_size: Integer,
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

        # If present, applications with <code>friendly_name</code> exactly matching the
        # given value will be returned. Matching is case-sensitive.
        sig do
          returns(
            T.nilable(
              T.any(
                String,
                Telnyx::TexmlApplicationListParams::Filter::FriendlyName::UnionMember1
              )
            )
          )
        end
        attr_reader :friendly_name

        sig do
          params(
            friendly_name:
              T.any(
                String,
                Telnyx::TexmlApplicationListParams::Filter::FriendlyName::UnionMember1::OrHash
              )
          ).void
        end
        attr_writer :friendly_name

        # If present, only applications associated with the given outbound voice profile
        # will be returned. Matching is exact.
        sig do
          returns(
            T.nilable(
              T.any(
                String,
                Telnyx::TexmlApplicationListParams::Filter::OutboundVoiceProfileID::Eq
              )
            )
          )
        end
        attr_reader :outbound_voice_profile_id

        sig do
          params(
            outbound_voice_profile_id:
              T.any(
                String,
                Telnyx::TexmlApplicationListParams::Filter::OutboundVoiceProfileID::Eq::OrHash
              )
          ).void
        end
        attr_writer :outbound_voice_profile_id

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[outbound_voice_profile_id], filter[friendly_name]
        sig do
          params(
            friendly_name:
              T.any(
                String,
                Telnyx::TexmlApplicationListParams::Filter::FriendlyName::UnionMember1::OrHash
              ),
            outbound_voice_profile_id:
              T.any(
                String,
                Telnyx::TexmlApplicationListParams::Filter::OutboundVoiceProfileID::Eq::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # If present, applications with <code>friendly_name</code> exactly matching the
          # given value will be returned. Matching is case-sensitive.
          friendly_name: nil,
          # If present, only applications associated with the given outbound voice profile
          # will be returned. Matching is exact.
          outbound_voice_profile_id: nil
        )
        end

        sig do
          override.returns(
            {
              friendly_name:
                T.any(
                  String,
                  Telnyx::TexmlApplicationListParams::Filter::FriendlyName::UnionMember1
                ),
              outbound_voice_profile_id:
                T.any(
                  String,
                  Telnyx::TexmlApplicationListParams::Filter::OutboundVoiceProfileID::Eq
                )
            }
          )
        end
        def to_hash
        end

        # If present, applications with <code>friendly_name</code> exactly matching the
        # given value will be returned. Matching is case-sensitive.
        module FriendlyName
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Telnyx::TexmlApplicationListParams::Filter::FriendlyName::UnionMember1
              )
            end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::TexmlApplicationListParams::Filter::FriendlyName::UnionMember1,
                  Telnyx::Internal::AnyHash
                )
              end

            # If present, applications with <code>friendly_name</code> containing the given
            # value will be returned. Matching is not case-sensitive.
            sig { returns(T.nilable(String)) }
            attr_reader :contains

            sig { params(contains: String).void }
            attr_writer :contains

            # Exact match for friendly_name. Matching is case-sensitive.
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            sig do
              params(contains: String, eq: String).returns(T.attached_class)
            end
            def self.new(
              # If present, applications with <code>friendly_name</code> containing the given
              # value will be returned. Matching is not case-sensitive.
              contains: nil,
              # Exact match for friendly_name. Matching is case-sensitive.
              eq: nil
            )
            end

            sig { override.returns({ contains: String, eq: String }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::TexmlApplicationListParams::Filter::FriendlyName::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # If present, only applications associated with the given outbound voice profile
        # will be returned. Matching is exact.
        module OutboundVoiceProfileID
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Telnyx::TexmlApplicationListParams::Filter::OutboundVoiceProfileID::Eq
              )
            end

          class Eq < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::TexmlApplicationListParams::Filter::OutboundVoiceProfileID::Eq,
                  Telnyx::Internal::AnyHash
                )
              end

            # Exact match for the associated outbound voice profile.
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            sig { params(eq: String).returns(T.attached_class) }
            def self.new(
              # Exact match for the associated outbound voice profile.
              eq: nil
            )
            end

            sig { override.returns({ eq: String }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::TexmlApplicationListParams::Filter::OutboundVoiceProfileID::Variants
              ]
            )
          end
          def self.variants
          end
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
