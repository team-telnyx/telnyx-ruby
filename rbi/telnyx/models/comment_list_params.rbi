# typed: strong

module Telnyx
  module Models
    class CommentListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::CommentListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[comment_record_type], filter[comment_record_id]
      sig { returns(T.nilable(Telnyx::CommentListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::CommentListParams::Filter::OrHash).void }
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::CommentListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[comment_record_type], filter[comment_record_id]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::CommentListParams::Filter,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::CommentListParams::Filter, Telnyx::Internal::AnyHash)
          end

        # ID of the record the comments relate to
        sig { returns(T.nilable(String)) }
        attr_reader :comment_record_id

        sig { params(comment_record_id: String).void }
        attr_writer :comment_record_id

        # Record type that the comment relates to
        sig do
          returns(
            T.nilable(
              Telnyx::CommentListParams::Filter::CommentRecordType::OrSymbol
            )
          )
        end
        attr_reader :comment_record_type

        sig do
          params(
            comment_record_type:
              Telnyx::CommentListParams::Filter::CommentRecordType::OrSymbol
          ).void
        end
        attr_writer :comment_record_type

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[comment_record_type], filter[comment_record_id]
        sig do
          params(
            comment_record_id: String,
            comment_record_type:
              Telnyx::CommentListParams::Filter::CommentRecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the record the comments relate to
          comment_record_id: nil,
          # Record type that the comment relates to
          comment_record_type: nil
        )
        end

        sig do
          override.returns(
            {
              comment_record_id: String,
              comment_record_type:
                Telnyx::CommentListParams::Filter::CommentRecordType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Record type that the comment relates to
        module CommentRecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CommentListParams::Filter::CommentRecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUB_NUMBER_ORDER =
            T.let(
              :sub_number_order,
              Telnyx::CommentListParams::Filter::CommentRecordType::TaggedSymbol
            )
          REQUIREMENT_GROUP =
            T.let(
              :requirement_group,
              Telnyx::CommentListParams::Filter::CommentRecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CommentListParams::Filter::CommentRecordType::TaggedSymbol
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
