# typed: strong

module Telnyx
  module Models
    class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CommentCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::CommentCreateResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::CommentCreateResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::CommentCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::Models::CommentCreateResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CommentCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :body

        sig { params(body: String).void }
        attr_writer :body

        sig { returns(T.nilable(String)) }
        attr_reader :comment_record_id

        sig { params(comment_record_id: String).void }
        attr_writer :comment_record_id

        sig do
          returns(
            T.nilable(
              Telnyx::Models::CommentCreateResponse::Data::CommentRecordType::TaggedSymbol
            )
          )
        end
        attr_reader :comment_record_type

        sig do
          params(
            comment_record_type:
              Telnyx::Models::CommentCreateResponse::Data::CommentRecordType::OrSymbol
          ).void
        end
        attr_writer :comment_record_type

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :commenter

        sig { params(commenter: String).void }
        attr_writer :commenter

        sig do
          returns(
            T.nilable(
              Telnyx::Models::CommentCreateResponse::Data::CommenterType::TaggedSymbol
            )
          )
        end
        attr_reader :commenter_type

        sig do
          params(
            commenter_type:
              Telnyx::Models::CommentCreateResponse::Data::CommenterType::OrSymbol
          ).void
        end
        attr_writer :commenter_type

        # An ISO 8901 datetime string denoting when the comment was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # An ISO 8901 datetime string for when the comment was read.
        sig { returns(T.nilable(Time)) }
        attr_reader :read_at

        sig { params(read_at: Time).void }
        attr_writer :read_at

        # An ISO 8901 datetime string for when the comment was updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            body: String,
            comment_record_id: String,
            comment_record_type:
              Telnyx::Models::CommentCreateResponse::Data::CommentRecordType::OrSymbol,
            commenter: String,
            commenter_type:
              Telnyx::Models::CommentCreateResponse::Data::CommenterType::OrSymbol,
            created_at: Time,
            read_at: Time,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          body: nil,
          comment_record_id: nil,
          comment_record_type: nil,
          commenter: nil,
          commenter_type: nil,
          # An ISO 8901 datetime string denoting when the comment was created.
          created_at: nil,
          # An ISO 8901 datetime string for when the comment was read.
          read_at: nil,
          # An ISO 8901 datetime string for when the comment was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              body: String,
              comment_record_id: String,
              comment_record_type:
                Telnyx::Models::CommentCreateResponse::Data::CommentRecordType::TaggedSymbol,
              commenter: String,
              commenter_type:
                Telnyx::Models::CommentCreateResponse::Data::CommenterType::TaggedSymbol,
              created_at: Time,
              read_at: Time,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module CommentRecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::CommentCreateResponse::Data::CommentRecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUB_NUMBER_ORDER =
            T.let(
              :sub_number_order,
              Telnyx::Models::CommentCreateResponse::Data::CommentRecordType::TaggedSymbol
            )
          REQUIREMENT_GROUP =
            T.let(
              :requirement_group,
              Telnyx::Models::CommentCreateResponse::Data::CommentRecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::CommentCreateResponse::Data::CommentRecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module CommenterType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::CommentCreateResponse::Data::CommenterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADMIN =
            T.let(
              :admin,
              Telnyx::Models::CommentCreateResponse::Data::CommenterType::TaggedSymbol
            )
          USER =
            T.let(
              :user,
              Telnyx::Models::CommentCreateResponse::Data::CommenterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::CommentCreateResponse::Data::CommenterType::TaggedSymbol
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
