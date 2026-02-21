# typed: strong

module Telnyx
  module Models
    class AlphanumericSenderIDCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AlphanumericSenderIDCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::AlphanumericSenderIDCreateResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::AlphanumericSenderIDCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::AlphanumericSenderIDCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::AlphanumericSenderIDCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AlphanumericSenderIDCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies the alphanumeric sender ID resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The alphanumeric sender ID string.
        sig { returns(T.nilable(String)) }
        attr_reader :alphanumeric_sender_id

        sig { params(alphanumeric_sender_id: String).void }
        attr_writer :alphanumeric_sender_id

        # The messaging profile this sender ID belongs to.
        sig { returns(T.nilable(String)) }
        attr_reader :messaging_profile_id

        sig { params(messaging_profile_id: String).void }
        attr_writer :messaging_profile_id

        # The organization that owns this sender ID.
        sig { returns(T.nilable(String)) }
        attr_reader :organization_id

        sig { params(organization_id: String).void }
        attr_writer :organization_id

        sig do
          returns(
            T.nilable(
              Telnyx::Models::AlphanumericSenderIDCreateResponse::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::AlphanumericSenderIDCreateResponse::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # A US long code number to use as fallback when sending to US destinations.
        sig { returns(T.nilable(String)) }
        attr_reader :us_long_code_fallback

        sig { params(us_long_code_fallback: String).void }
        attr_writer :us_long_code_fallback

        sig do
          params(
            id: String,
            alphanumeric_sender_id: String,
            messaging_profile_id: String,
            organization_id: String,
            record_type:
              Telnyx::Models::AlphanumericSenderIDCreateResponse::Data::RecordType::OrSymbol,
            us_long_code_fallback: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the alphanumeric sender ID resource.
          id: nil,
          # The alphanumeric sender ID string.
          alphanumeric_sender_id: nil,
          # The messaging profile this sender ID belongs to.
          messaging_profile_id: nil,
          # The organization that owns this sender ID.
          organization_id: nil,
          record_type: nil,
          # A US long code number to use as fallback when sending to US destinations.
          us_long_code_fallback: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              alphanumeric_sender_id: String,
              messaging_profile_id: String,
              organization_id: String,
              record_type:
                Telnyx::Models::AlphanumericSenderIDCreateResponse::Data::RecordType::TaggedSymbol,
              us_long_code_fallback: String
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::AlphanumericSenderIDCreateResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALPHANUMERIC_SENDER_ID =
            T.let(
              :alphanumeric_sender_id,
              Telnyx::Models::AlphanumericSenderIDCreateResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::AlphanumericSenderIDCreateResponse::Data::RecordType::TaggedSymbol
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
