# typed: strong

module Telnyx
  module Models
    class WebhookDeliveryRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WebhookDeliveryRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Record of all attempts to deliver a webhook.
      sig do
        returns(
          T.nilable(Telnyx::Models::WebhookDeliveryRetrieveResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Record of all attempts to deliver a webhook.
        data: nil
      )
      end

      sig do
        override.returns(
          { data: Telnyx::Models::WebhookDeliveryRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WebhookDeliveryRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies the webhook_delivery record.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Detailed delivery attempts, ordered by most recent.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt
              ]
            )
          )
        end
        attr_reader :attempts

        sig do
          params(
            attempts:
              T::Array[
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::OrHash
              ]
          ).void
        end
        attr_writer :attempts

        # ISO 8601 timestamp indicating when the last webhook response has been received.
        sig { returns(T.nilable(Time)) }
        attr_reader :finished_at

        sig { params(finished_at: Time).void }
        attr_writer :finished_at

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 timestamp indicating when the first request attempt was initiated.
        sig { returns(T.nilable(Time)) }
        attr_reader :started_at

        sig { params(started_at: Time).void }
        attr_writer :started_at

        # Delivery status: 'delivered' when successfuly delivered or 'failed' if all
        # attempts have failed.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Uniquely identifies the user that owns the webhook_delivery record.
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        # Original webhook JSON data. Payload fields vary according to event type.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook
            )
          )
        end
        attr_reader :webhook

        sig do
          params(
            webhook:
              Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::OrHash
          ).void
        end
        attr_writer :webhook

        # Record of all attempts to deliver a webhook.
        sig do
          params(
            id: String,
            attempts:
              T::Array[
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::OrHash
              ],
            finished_at: Time,
            record_type: String,
            started_at: Time,
            status:
              Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status::OrSymbol,
            user_id: String,
            webhook:
              Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the webhook_delivery record.
          id: nil,
          # Detailed delivery attempts, ordered by most recent.
          attempts: nil,
          # ISO 8601 timestamp indicating when the last webhook response has been received.
          finished_at: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 timestamp indicating when the first request attempt was initiated.
          started_at: nil,
          # Delivery status: 'delivered' when successfuly delivered or 'failed' if all
          # attempts have failed.
          status: nil,
          # Uniquely identifies the user that owns the webhook_delivery record.
          user_id: nil,
          # Original webhook JSON data. Payload fields vary according to event type.
          webhook: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              attempts:
                T::Array[
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt
                ],
              finished_at: Time,
              record_type: String,
              started_at: Time,
              status:
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status::TaggedSymbol,
              user_id: String,
              webhook:
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook
            }
          )
        end
        def to_hash
        end

        class Attempt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt,
                Telnyx::Internal::AnyHash
              )
            end

          # Webhook delivery error codes.
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :errors

          sig { params(errors: T::Array[Integer]).void }
          attr_writer :errors

          # ISO 8601 timestamp indicating when the attempt has finished.
          sig { returns(T.nilable(Time)) }
          attr_reader :finished_at

          sig { params(finished_at: Time).void }
          attr_writer :finished_at

          # HTTP request and response information.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP
              )
            )
          end
          attr_reader :http

          sig do
            params(
              http:
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::OrHash
            ).void
          end
          attr_writer :http

          # ISO 8601 timestamp indicating when the attempt was initiated.
          sig { returns(T.nilable(Time)) }
          attr_reader :started_at

          sig { params(started_at: Time).void }
          attr_writer :started_at

          sig do
            returns(
              T.nilable(
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Webhook delivery attempt details.
          sig do
            params(
              errors: T::Array[Integer],
              finished_at: Time,
              http:
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::OrHash,
              started_at: Time,
              status:
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Webhook delivery error codes.
            errors: nil,
            # ISO 8601 timestamp indicating when the attempt has finished.
            finished_at: nil,
            # HTTP request and response information.
            http: nil,
            # ISO 8601 timestamp indicating when the attempt was initiated.
            started_at: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                errors: T::Array[Integer],
                finished_at: Time,
                http:
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP,
                started_at: Time,
                status:
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class HTTP < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP,
                  Telnyx::Internal::AnyHash
                )
              end

            # Request details.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::Request
                )
              )
            end
            attr_reader :request

            sig do
              params(
                request:
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::Request::OrHash
              ).void
            end
            attr_writer :request

            # Response details, optional.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::Response
                )
              )
            end
            attr_reader :response

            sig do
              params(
                response:
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::Response::OrHash
              ).void
            end
            attr_writer :response

            # HTTP request and response information.
            sig do
              params(
                request:
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::Request::OrHash,
                response:
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::Response::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Request details.
              request: nil,
              # Response details, optional.
              response: nil
            )
            end

            sig do
              override.returns(
                {
                  request:
                    Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::Request,
                  response:
                    Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::Response
                }
              )
            end
            def to_hash
            end

            class Request < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::Request,
                    Telnyx::Internal::AnyHash
                  )
                end

              # List of headers, limited to 10kB.
              sig { returns(T.nilable(T::Array[T::Array[String]])) }
              attr_reader :headers

              sig { params(headers: T::Array[T::Array[String]]).void }
              attr_writer :headers

              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              # Request details.
              sig do
                params(
                  headers: T::Array[T::Array[String]],
                  url: String
                ).returns(T.attached_class)
              end
              def self.new(
                # List of headers, limited to 10kB.
                headers: nil,
                url: nil
              )
              end

              sig do
                override.returns(
                  { headers: T::Array[T::Array[String]], url: String }
                )
              end
              def to_hash
              end
            end

            class Response < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::HTTP::Response,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Raw response body, limited to 10kB.
              sig { returns(T.nilable(String)) }
              attr_reader :body

              sig { params(body: String).void }
              attr_writer :body

              # List of headers, limited to 10kB.
              sig { returns(T.nilable(T::Array[T::Array[String]])) }
              attr_reader :headers

              sig { params(headers: T::Array[T::Array[String]]).void }
              attr_writer :headers

              sig { returns(T.nilable(Integer)) }
              attr_reader :status

              sig { params(status: Integer).void }
              attr_writer :status

              # Response details, optional.
              sig do
                params(
                  body: String,
                  headers: T::Array[T::Array[String]],
                  status: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # Raw response body, limited to 10kB.
                body: nil,
                # List of headers, limited to 10kB.
                headers: nil,
                status: nil
              )
              end

              sig do
                override.returns(
                  {
                    body: String,
                    headers: T::Array[T::Array[String]],
                    status: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DELIVERED =
              T.let(
                :delivered,
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Attempt::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Delivery status: 'delivered' when successfuly delivered or 'failed' if all
        # attempts have failed.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELIVERED =
            T.let(
              :delivered,
              Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Webhook < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the type of resource.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The type of event being delivered.
          sig { returns(T.nilable(String)) }
          attr_reader :event_type

          sig { params(event_type: String).void }
          attr_writer :event_type

          # ISO 8601 datetime of when the event occurred.
          sig { returns(T.nilable(Time)) }
          attr_reader :occurred_at

          sig { params(occurred_at: Time).void }
          attr_writer :occurred_at

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :payload

          sig { params(payload: T::Hash[Symbol, T.anything]).void }
          attr_writer :payload

          # Identifies the type of the resource.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::RecordType::TaggedSymbol
              )
            )
          end
          attr_reader :record_type

          sig do
            params(
              record_type:
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::RecordType::OrSymbol
            ).void
          end
          attr_writer :record_type

          # Original webhook JSON data. Payload fields vary according to event type.
          sig do
            params(
              id: String,
              event_type: String,
              occurred_at: Time,
              payload: T::Hash[Symbol, T.anything],
              record_type:
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::RecordType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the type of resource.
            id: nil,
            # The type of event being delivered.
            event_type: nil,
            # ISO 8601 datetime of when the event occurred.
            occurred_at: nil,
            payload: nil,
            # Identifies the type of the resource.
            record_type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                event_type: String,
                occurred_at: Time,
                payload: T::Hash[Symbol, T.anything],
                record_type:
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::RecordType::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Identifies the type of the resource.
          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EVENT =
              T.let(
                :event,
                Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::RecordType::TaggedSymbol
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
