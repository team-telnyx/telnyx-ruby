# typed: strong

module Telnyx
  module Models
    module Portouts
      class CommentListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Portouts::CommentListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::Portouts::CommentListResponse::Data]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Portouts::CommentListResponse::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig { returns(T.nilable(Telnyx::Metadata)) }
        attr_reader :meta

        sig { params(meta: Telnyx::Metadata::OrHash).void }
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Portouts::CommentListResponse::Data::OrHash
              ],
            meta: Telnyx::Metadata::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[Telnyx::Models::Portouts::CommentListResponse::Data],
              meta: Telnyx::Metadata
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Portouts::CommentListResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Comment body
          sig { returns(String) }
          attr_accessor :body

          # Comment creation timestamp in ISO 8601 format
          sig { returns(String) }
          attr_accessor :created_at

          # Identifies the user who created the comment. Will be null if created by Telnyx
          # Admin
          sig { returns(String) }
          attr_accessor :user_id

          # Identifies the associated port request
          sig { returns(T.nilable(String)) }
          attr_reader :portout_id

          sig { params(portout_id: String).void }
          attr_writer :portout_id

          # Identifies the type of the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            params(
              id: String,
              body: String,
              created_at: String,
              user_id: String,
              portout_id: String,
              record_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Comment body
            body:,
            # Comment creation timestamp in ISO 8601 format
            created_at:,
            # Identifies the user who created the comment. Will be null if created by Telnyx
            # Admin
            user_id:,
            # Identifies the associated port request
            portout_id: nil,
            # Identifies the type of the resource.
            record_type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                body: String,
                created_at: String,
                user_id: String,
                portout_id: String,
                record_type: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
