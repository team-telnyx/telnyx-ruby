# typed: strong

module Telnyx
  module Models
    class MessagingOptoutListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingOptoutListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::MessagingOptoutListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[Telnyx::Models::MessagingOptoutListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[Telnyx::Models::MessagingOptoutListResponse::Data::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::MessagingOptoutListResponse::Data],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingOptoutListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The timestamp when the opt-out was created
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        # code).
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # The keyword that triggered the opt-out.
        sig { returns(T.nilable(String)) }
        attr_accessor :keyword

        # Unique identifier for a messaging profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :messaging_profile_id

        # Receiving address (+E.164 formatted phone number or short code).
        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        sig do
          params(
            created_at: Time,
            from: String,
            keyword: T.nilable(String),
            messaging_profile_id: T.nilable(String),
            to: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp when the opt-out was created
          created_at: nil,
          # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
          # code).
          from: nil,
          # The keyword that triggered the opt-out.
          keyword: nil,
          # Unique identifier for a messaging profile.
          messaging_profile_id: nil,
          # Receiving address (+E.164 formatted phone number or short code).
          to: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              from: String,
              keyword: T.nilable(String),
              messaging_profile_id: T.nilable(String),
              to: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
