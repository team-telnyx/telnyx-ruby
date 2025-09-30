# typed: strong

module Telnyx
  module Models
    module Messaging
      class RcInviteTestNumberResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Messaging::RcInviteTestNumberResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data: Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # RCS agent ID
          sig { returns(T.nilable(String)) }
          attr_reader :agent_id

          sig { params(agent_id: String).void }
          attr_writer :agent_id

          # Phone number that was invited for testing
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Identifies the type of the resource
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::RecordType::TaggedSymbol
              )
            )
          end
          attr_reader :record_type

          sig do
            params(
              record_type:
                Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::RecordType::OrSymbol
            ).void
          end
          attr_writer :record_type

          # Status of the test number invitation
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              agent_id: String,
              phone_number: String,
              record_type:
                Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::RecordType::OrSymbol,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            # RCS agent ID
            agent_id: nil,
            # Phone number that was invited for testing
            phone_number: nil,
            # Identifies the type of the resource
            record_type: nil,
            # Status of the test number invitation
            status: nil
          )
          end

          sig do
            override.returns(
              {
                agent_id: String,
                phone_number: String,
                record_type:
                  Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::RecordType::TaggedSymbol,
                status: String
              }
            )
          end
          def to_hash
          end

          # Identifies the type of the resource
          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RCS_TEST_NUMBER_INVITE =
              T.let(
                :"rcs.test_number_invite",
                Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::RecordType::TaggedSymbol
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
end
