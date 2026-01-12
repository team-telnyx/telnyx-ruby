# typed: strong

module Telnyx
  module Models
    module Messages
      class RcSendResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Messages::RcSendResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::Models::Messages::RcSendResponse::Data))
        end
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::Messages::RcSendResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::Messages::RcSendResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Messages::RcSendResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Messages::RcSendResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # message ID
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(Telnyx::RcsAgentMessage)) }
          attr_reader :body

          sig { params(body: Telnyx::RcsAgentMessage::OrHash).void }
          attr_writer :body

          sig { returns(T.nilable(String)) }
          attr_reader :direction

          sig { params(direction: String).void }
          attr_writer :direction

          sig { returns(T.nilable(String)) }
          attr_reader :encoding

          sig { params(encoding: String).void }
          attr_writer :encoding

          sig do
            returns(
              T.nilable(Telnyx::Models::Messages::RcSendResponse::Data::From)
            )
          end
          attr_reader :from

          sig do
            params(
              from: Telnyx::Models::Messages::RcSendResponse::Data::From::OrHash
            ).void
          end
          attr_writer :from

          sig { returns(T.nilable(String)) }
          attr_reader :messaging_profile_id

          sig { params(messaging_profile_id: String).void }
          attr_writer :messaging_profile_id

          sig { returns(T.nilable(String)) }
          attr_reader :organization_id

          sig { params(organization_id: String).void }
          attr_writer :organization_id

          sig { returns(T.nilable(Time)) }
          attr_reader :received_at

          sig { params(received_at: Time).void }
          attr_writer :received_at

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            returns(
              T.nilable(
                T::Array[Telnyx::Models::Messages::RcSendResponse::Data::To]
              )
            )
          end
          attr_reader :to

          sig do
            params(
              to:
                T::Array[
                  Telnyx::Models::Messages::RcSendResponse::Data::To::OrHash
                ]
            ).void
          end
          attr_writer :to

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              id: String,
              body: Telnyx::RcsAgentMessage::OrHash,
              direction: String,
              encoding: String,
              from:
                Telnyx::Models::Messages::RcSendResponse::Data::From::OrHash,
              messaging_profile_id: String,
              organization_id: String,
              received_at: Time,
              record_type: String,
              to:
                T::Array[
                  Telnyx::Models::Messages::RcSendResponse::Data::To::OrHash
                ],
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # message ID
            id: nil,
            body: nil,
            direction: nil,
            encoding: nil,
            from: nil,
            messaging_profile_id: nil,
            organization_id: nil,
            received_at: nil,
            record_type: nil,
            to: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                body: Telnyx::RcsAgentMessage,
                direction: String,
                encoding: String,
                from: Telnyx::Models::Messages::RcSendResponse::Data::From,
                messaging_profile_id: String,
                organization_id: String,
                received_at: Time,
                record_type: String,
                to:
                  T::Array[Telnyx::Models::Messages::RcSendResponse::Data::To],
                type: String
              }
            )
          end
          def to_hash
          end

          class From < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Messages::RcSendResponse::Data::From,
                  Telnyx::Internal::AnyHash
                )
              end

            # agent ID
            sig { returns(T.nilable(String)) }
            attr_reader :agent_id

            sig { params(agent_id: String).void }
            attr_writer :agent_id

            sig { returns(T.nilable(String)) }
            attr_reader :agent_name

            sig { params(agent_name: String).void }
            attr_writer :agent_name

            sig { returns(T.nilable(String)) }
            attr_reader :carrier

            sig { params(carrier: String).void }
            attr_writer :carrier

            sig do
              params(
                agent_id: String,
                agent_name: String,
                carrier: String
              ).returns(T.attached_class)
            end
            def self.new(
              # agent ID
              agent_id: nil,
              agent_name: nil,
              carrier: nil
            )
            end

            sig do
              override.returns(
                { agent_id: String, agent_name: String, carrier: String }
              )
            end
            def to_hash
            end
          end

          class To < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Messages::RcSendResponse::Data::To,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :carrier

            sig { params(carrier: String).void }
            attr_writer :carrier

            sig { returns(T.nilable(String)) }
            attr_reader :line_type

            sig { params(line_type: String).void }
            attr_writer :line_type

            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            sig do
              params(
                carrier: String,
                line_type: String,
                phone_number: String,
                status: String
              ).returns(T.attached_class)
            end
            def self.new(
              carrier: nil,
              line_type: nil,
              phone_number: nil,
              status: nil
            )
            end

            sig do
              override.returns(
                {
                  carrier: String,
                  line_type: String,
                  phone_number: String,
                  status: String
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
end
