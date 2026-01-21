# typed: strong

module Telnyx
  module Models
    module AI
      class Assistant < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::Assistant, Telnyx::Internal::AnyHash)
          end

        # The system instructions that the voice assistant uses during the gather command
        sig { returns(T.nilable(String)) }
        attr_reader :instructions

        sig { params(instructions: String).void }
        attr_writer :instructions

        # The model to be used by the voice assistant.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        # This is necessary only if the model selected is from OpenAI. You would pass the
        # `identifier` for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # that refers to your OpenAI API Key. Warning: Free plans are unlikely to work
        # with this integration.
        sig { returns(T.nilable(String)) }
        attr_reader :openai_api_key_ref

        sig { params(openai_api_key_ref: String).void }
        attr_writer :openai_api_key_ref

        # The tools that the voice assistant can use.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Telnyx::AI::Assistant::Tool::BookAppointment,
                  Telnyx::AI::Assistant::Tool::CheckAvailability,
                  Telnyx::AI::WebhookTool,
                  Telnyx::AI::HangupTool,
                  Telnyx::AI::TransferTool,
                  Telnyx::AI::Assistant::Tool::Retrieval
                )
              ]
            )
          )
        end
        attr_reader :tools

        sig do
          params(
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::Assistant::Tool::BookAppointment::OrHash,
                  Telnyx::AI::Assistant::Tool::CheckAvailability::OrHash,
                  Telnyx::AI::WebhookTool::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::TransferTool::OrHash,
                  Telnyx::AI::Assistant::Tool::Retrieval::OrHash
                )
              ]
          ).void
        end
        attr_writer :tools

        # Assistant configuration including choice of LLM, custom instructions, and tools.
        sig do
          params(
            instructions: String,
            model: String,
            openai_api_key_ref: String,
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::Assistant::Tool::BookAppointment::OrHash,
                  Telnyx::AI::Assistant::Tool::CheckAvailability::OrHash,
                  Telnyx::AI::WebhookTool::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::TransferTool::OrHash,
                  Telnyx::AI::Assistant::Tool::Retrieval::OrHash
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The system instructions that the voice assistant uses during the gather command
          instructions: nil,
          # The model to be used by the voice assistant.
          model: nil,
          # This is necessary only if the model selected is from OpenAI. You would pass the
          # `identifier` for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # that refers to your OpenAI API Key. Warning: Free plans are unlikely to work
          # with this integration.
          openai_api_key_ref: nil,
          # The tools that the voice assistant can use.
          tools: nil
        )
        end

        sig do
          override.returns(
            {
              instructions: String,
              model: String,
              openai_api_key_ref: String,
              tools:
                T::Array[
                  T.any(
                    Telnyx::AI::Assistant::Tool::BookAppointment,
                    Telnyx::AI::Assistant::Tool::CheckAvailability,
                    Telnyx::AI::WebhookTool,
                    Telnyx::AI::HangupTool,
                    Telnyx::AI::TransferTool,
                    Telnyx::AI::Assistant::Tool::Retrieval
                  )
                ]
            }
          )
        end
        def to_hash
        end

        module Tool
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistant::Tool::BookAppointment,
                Telnyx::AI::Assistant::Tool::CheckAvailability,
                Telnyx::AI::WebhookTool,
                Telnyx::AI::HangupTool,
                Telnyx::AI::TransferTool,
                Telnyx::AI::Assistant::Tool::Retrieval
              )
            end

          class BookAppointment < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistant::Tool::BookAppointment,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::AI::Assistant::Tool::BookAppointment::BookAppointment
              )
            end
            attr_reader :book_appointment

            sig do
              params(
                book_appointment:
                  Telnyx::AI::Assistant::Tool::BookAppointment::BookAppointment::OrHash
              ).void
            end
            attr_writer :book_appointment

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                book_appointment:
                  Telnyx::AI::Assistant::Tool::BookAppointment::BookAppointment::OrHash,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(book_appointment:, type: :book_appointment)
            end

            sig do
              override.returns(
                {
                  book_appointment:
                    Telnyx::AI::Assistant::Tool::BookAppointment::BookAppointment,
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            class BookAppointment < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistant::Tool::BookAppointment::BookAppointment,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Reference to an integration secret that contains your Cal.com API key. You would
              # pass the `identifier` for an integration secret
              # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
              # that refers to your Cal.com API key.
              sig { returns(String) }
              attr_accessor :api_key_ref

              # Event Type ID for which slots are being fetched.
              # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
              sig { returns(Integer) }
              attr_accessor :event_type_id

              # The name of the attendee
              # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
              # If not provided, the assistant will ask for the attendee's name.
              sig { returns(T.nilable(String)) }
              attr_reader :attendee_name

              sig { params(attendee_name: String).void }
              attr_writer :attendee_name

              # The timezone of the attendee
              # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
              # If not provided, the assistant will ask for the attendee's timezone.
              sig { returns(T.nilable(String)) }
              attr_reader :attendee_timezone

              sig { params(attendee_timezone: String).void }
              attr_writer :attendee_timezone

              sig do
                params(
                  api_key_ref: String,
                  event_type_id: Integer,
                  attendee_name: String,
                  attendee_timezone: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Reference to an integration secret that contains your Cal.com API key. You would
                # pass the `identifier` for an integration secret
                # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                # that refers to your Cal.com API key.
                api_key_ref:,
                # Event Type ID for which slots are being fetched.
                # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
                event_type_id:,
                # The name of the attendee
                # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
                # If not provided, the assistant will ask for the attendee's name.
                attendee_name: nil,
                # The timezone of the attendee
                # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
                # If not provided, the assistant will ask for the attendee's timezone.
                attendee_timezone: nil
              )
              end

              sig do
                override.returns(
                  {
                    api_key_ref: String,
                    event_type_id: Integer,
                    attendee_name: String,
                    attendee_timezone: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class CheckAvailability < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistant::Tool::CheckAvailability,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::AI::Assistant::Tool::CheckAvailability::CheckAvailability
              )
            end
            attr_reader :check_availability

            sig do
              params(
                check_availability:
                  Telnyx::AI::Assistant::Tool::CheckAvailability::CheckAvailability::OrHash
              ).void
            end
            attr_writer :check_availability

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                check_availability:
                  Telnyx::AI::Assistant::Tool::CheckAvailability::CheckAvailability::OrHash,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(check_availability:, type: :check_availability)
            end

            sig do
              override.returns(
                {
                  check_availability:
                    Telnyx::AI::Assistant::Tool::CheckAvailability::CheckAvailability,
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            class CheckAvailability < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistant::Tool::CheckAvailability::CheckAvailability,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Reference to an integration secret that contains your Cal.com API key. You would
              # pass the `identifier` for an integration secret
              # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
              # that refers to your Cal.com API key.
              sig { returns(String) }
              attr_accessor :api_key_ref

              # Event Type ID for which slots are being fetched.
              # [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
              sig { returns(Integer) }
              attr_accessor :event_type_id

              sig do
                params(api_key_ref: String, event_type_id: Integer).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Reference to an integration secret that contains your Cal.com API key. You would
                # pass the `identifier` for an integration secret
                # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                # that refers to your Cal.com API key.
                api_key_ref:,
                # Event Type ID for which slots are being fetched.
                # [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
                event_type_id:
              )
              end

              sig do
                override.returns(
                  { api_key_ref: String, event_type_id: Integer }
                )
              end
              def to_hash
              end
            end
          end

          class Retrieval < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistant::Tool::Retrieval,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Telnyx::AI::Assistant::Tool::Retrieval::Retrieval) }
            attr_reader :retrieval

            sig do
              params(
                retrieval:
                  Telnyx::AI::Assistant::Tool::Retrieval::Retrieval::OrHash
              ).void
            end
            attr_writer :retrieval

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                retrieval:
                  Telnyx::AI::Assistant::Tool::Retrieval::Retrieval::OrHash,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(retrieval:, type: :retrieval)
            end

            sig do
              override.returns(
                {
                  retrieval: Telnyx::AI::Assistant::Tool::Retrieval::Retrieval,
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            class Retrieval < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistant::Tool::Retrieval::Retrieval,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T::Array[String]) }
              attr_accessor :bucket_ids

              # The maximum number of results to retrieve as context for the language model.
              sig { returns(T.nilable(Integer)) }
              attr_reader :max_num_results

              sig { params(max_num_results: Integer).void }
              attr_writer :max_num_results

              sig do
                params(
                  bucket_ids: T::Array[String],
                  max_num_results: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                bucket_ids:,
                # The maximum number of results to retrieve as context for the language model.
                max_num_results: nil
              )
              end

              sig do
                override.returns(
                  { bucket_ids: T::Array[String], max_num_results: Integer }
                )
              end
              def to_hash
              end
            end
          end

          sig do
            override.returns(T::Array[Telnyx::AI::Assistant::Tool::Variants])
          end
          def self.variants
          end
        end
      end
    end
  end
end
