# typed: strong

module Telnyx
  module Models
    class NumberOrderStatusUpdateWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NumberOrderStatusUpdateWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::NumberOrderStatusUpdateWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig { returns(Telnyx::NumberOrderStatusUpdateWebhookEvent::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::NumberOrderStatusUpdateWebhookEvent::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data: Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::OrHash,
          meta: Telnyx::NumberOrderStatusUpdateWebhookEvent::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: Telnyx::NumberOrderStatusUpdateWebhookEvent::Data,
            meta: Telnyx::NumberOrderStatusUpdateWebhookEvent::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NumberOrderStatusUpdateWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the event
        sig { returns(String) }
        attr_accessor :id

        # The type of event being sent
        sig { returns(String) }
        attr_accessor :event_type

        # ISO 8601 timestamp of when the event occurred
        sig { returns(Time) }
        attr_accessor :occurred_at

        # Number order data delivered in a webhook. Server-generated fields are valid in
        # this outbound webhook request.
        sig do
          returns(Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload)
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Type of record
        sig { returns(String) }
        attr_accessor :record_type

        sig do
          params(
            id: String,
            event_type: String,
            occurred_at: Time,
            payload:
              Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::OrHash,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the event
          id:,
          # The type of event being sent
          event_type:,
          # ISO 8601 timestamp of when the event occurred
          occurred_at:,
          # Number order data delivered in a webhook. Server-generated fields are valid in
          # this outbound webhook request.
          payload:,
          # Type of record
          record_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type: String,
              occurred_at: Time,
              payload:
                Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload,
              record_type: String
            }
          )
        end
        def to_hash
        end

        class Payload < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Identifies the messaging profile associated with the phone number.
          sig { returns(T.nilable(String)) }
          attr_reader :billing_group_id

          sig { params(billing_group_id: String).void }
          attr_writer :billing_group_id

          # Identifies the connection associated with this phone number.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # An ISO 8901 datetime string denoting when the number order was created.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # A customer reference string for customer look ups.
          sig { returns(T.nilable(String)) }
          attr_reader :customer_reference

          sig { params(customer_reference: String).void }
          attr_writer :customer_reference

          # Identifies the messaging profile associated with the phone number.
          sig { returns(T.nilable(String)) }
          attr_reader :messaging_profile_id

          sig { params(messaging_profile_id: String).void }
          attr_writer :messaging_profile_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber
                ]
              )
            )
          end
          attr_reader :phone_numbers

          sig do
            params(
              phone_numbers:
                T::Array[
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::OrHash
                ]
            ).void
          end
          attr_writer :phone_numbers

          # The count of phone numbers in the number order.
          sig { returns(T.nilable(Integer)) }
          attr_reader :phone_numbers_count

          sig { params(phone_numbers_count: Integer).void }
          attr_writer :phone_numbers_count

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # True if all requirements are met for every phone number, false otherwise.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :requirements_met

          sig { params(requirements_met: T::Boolean).void }
          attr_writer :requirements_met

          # The status of the order.
          sig do
            returns(
              T.nilable(
                Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sub_number_orders_ids

          sig { params(sub_number_orders_ids: T::Array[String]).void }
          attr_writer :sub_number_orders_ids

          # An ISO 8901 datetime string for when the number order was updated.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          # Number order data delivered in a webhook. Server-generated fields are valid in
          # this outbound webhook request.
          sig do
            params(
              id: String,
              billing_group_id: String,
              connection_id: String,
              created_at: Time,
              customer_reference: String,
              messaging_profile_id: String,
              phone_numbers:
                T::Array[
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::OrHash
                ],
              phone_numbers_count: Integer,
              record_type: String,
              requirements_met: T::Boolean,
              status:
                Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status::OrSymbol,
              sub_number_orders_ids: T::Array[String],
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            # Identifies the messaging profile associated with the phone number.
            billing_group_id: nil,
            # Identifies the connection associated with this phone number.
            connection_id: nil,
            # An ISO 8901 datetime string denoting when the number order was created.
            created_at: nil,
            # A customer reference string for customer look ups.
            customer_reference: nil,
            # Identifies the messaging profile associated with the phone number.
            messaging_profile_id: nil,
            phone_numbers: nil,
            # The count of phone numbers in the number order.
            phone_numbers_count: nil,
            record_type: nil,
            # True if all requirements are met for every phone number, false otherwise.
            requirements_met: nil,
            # The status of the order.
            status: nil,
            sub_number_orders_ids: nil,
            # An ISO 8901 datetime string for when the number order was updated.
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                billing_group_id: String,
                connection_id: String,
                created_at: Time,
                customer_reference: String,
                messaging_profile_id: String,
                phone_numbers:
                  T::Array[
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber
                  ],
                phone_numbers_count: Integer,
                record_type: String,
                requirements_met: T::Boolean,
                status:
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status::TaggedSymbol,
                sub_number_orders_ids: T::Array[String],
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :bundle_id

            sig { params(bundle_id: String).void }
            attr_writer :bundle_id

            # Country code of the phone number
            sig { returns(T.nilable(String)) }
            attr_reader :country_code

            sig { params(country_code: String).void }
            attr_writer :country_code

            # The ISO 3166-1 alpha-2 country code of the phone number.
            sig { returns(T.nilable(String)) }
            attr_reader :country_iso_alpha2

            sig { params(country_iso_alpha2: String).void }
            attr_writer :country_iso_alpha2

            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            # Phone number type
            sig do
              returns(
                T.nilable(
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType::TaggedSymbol
                )
              )
            end
            attr_reader :phone_number_type

            sig do
              params(
                phone_number_type:
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType::OrSymbol
              ).void
            end
            attr_writer :phone_number_type

            sig { returns(T.nilable(String)) }
            attr_reader :record_type

            sig { params(record_type: String).void }
            attr_writer :record_type

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement
                  ]
                )
              )
            end
            attr_reader :regulatory_requirements

            sig do
              params(
                regulatory_requirements:
                  T::Array[
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::OrHash
                  ]
              ).void
            end
            attr_writer :regulatory_requirements

            # True if all requirements are met for a phone number, false otherwise.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :requirements_met

            sig { params(requirements_met: T::Boolean).void }
            attr_writer :requirements_met

            # Status of document requirements (if applicable)
            sig do
              returns(
                T.nilable(
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::TaggedSymbol
                )
              )
            end
            attr_reader :requirements_status

            sig do
              params(
                requirements_status:
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::OrSymbol
              ).void
            end
            attr_writer :requirements_status

            # The status of the phone number in the order.
            sig do
              returns(
                T.nilable(
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status::OrSymbol
              ).void
            end
            attr_writer :status

            # The unique phone numbers given as arguments in the job creation.
            sig do
              params(
                id: String,
                bundle_id: String,
                country_code: String,
                country_iso_alpha2: String,
                phone_number: String,
                phone_number_type:
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType::OrSymbol,
                record_type: String,
                regulatory_requirements:
                  T::Array[
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::OrHash
                  ],
                requirements_met: T::Boolean,
                requirements_status:
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::OrSymbol,
                status:
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              bundle_id: nil,
              # Country code of the phone number
              country_code: nil,
              # The ISO 3166-1 alpha-2 country code of the phone number.
              country_iso_alpha2: nil,
              phone_number: nil,
              # Phone number type
              phone_number_type: nil,
              record_type: nil,
              regulatory_requirements: nil,
              # True if all requirements are met for a phone number, false otherwise.
              requirements_met: nil,
              # Status of document requirements (if applicable)
              requirements_status: nil,
              # The status of the phone number in the order.
              status: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  bundle_id: String,
                  country_code: String,
                  country_iso_alpha2: String,
                  phone_number: String,
                  phone_number_type:
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType::TaggedSymbol,
                  record_type: String,
                  regulatory_requirements:
                    T::Array[
                      Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement
                    ],
                  requirements_met: T::Boolean,
                  requirements_status:
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::TaggedSymbol,
                  status:
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Phone number type
            module PhoneNumberType
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LOCAL =
                T.let(
                  :local,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType::TaggedSymbol
                )
              MOBILE =
                T.let(
                  :mobile,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType::TaggedSymbol
                )
              NATIONAL =
                T.let(
                  :national,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType::TaggedSymbol
                )
              SHARED_COST =
                T.let(
                  :shared_cost,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType::TaggedSymbol
                )
              TOLL_FREE =
                T.let(
                  :toll_free,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
                  )
                )
              end
              attr_reader :field_type

              sig do
                params(
                  field_type:
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType::OrSymbol
                ).void
              end
              attr_writer :field_type

              # The value of the requirement, this could be an id to a resource or a string
              # value.
              sig { returns(T.nilable(String)) }
              attr_reader :field_value

              sig { params(field_value: String).void }
              attr_writer :field_value

              sig { returns(T.nilable(String)) }
              attr_reader :record_type

              sig { params(record_type: String).void }
              attr_writer :record_type

              # Unique id for a requirement.
              sig { returns(T.nilable(String)) }
              attr_reader :requirement_id

              sig { params(requirement_id: String).void }
              attr_writer :requirement_id

              # Regulatory requirement data delivered in a number order webhook.
              sig do
                params(
                  field_type:
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType::OrSymbol,
                  field_value: String,
                  record_type: String,
                  requirement_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                field_type: nil,
                # The value of the requirement, this could be an id to a resource or a string
                # value.
                field_value: nil,
                record_type: nil,
                # Unique id for a requirement.
                requirement_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    field_type:
                      Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol,
                    field_value: String,
                    record_type: String,
                    requirement_id: String
                  }
                )
              end
              def to_hash
              end

              module FieldType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TEXTUAL =
                  T.let(
                    :textual,
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
                  )
                DATETIME =
                  T.let(
                    :datetime,
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
                  )
                ADDRESS =
                  T.let(
                    :address,
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
                  )
                DOCUMENT =
                  T.let(
                    :document,
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # Status of document requirements (if applicable)
            module RequirementsStatus
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :pending,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::TaggedSymbol
                )
              APPROVED =
                T.let(
                  :approved,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::TaggedSymbol
                )
              CANCELLED =
                T.let(
                  :cancelled,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::TaggedSymbol
                )
              DELETED =
                T.let(
                  :deleted,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::TaggedSymbol
                )
              REQUIREMENT_INFO_EXCEPTION =
                T.let(
                  :"requirement-info-exception",
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::TaggedSymbol
                )
              REQUIREMENT_INFO_PENDING =
                T.let(
                  :"requirement-info-pending",
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::TaggedSymbol
                )
              REQUIREMENT_INFO_UNDER_REVIEW =
                T.let(
                  :"requirement-info-under-review",
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The status of the phone number in the order.
            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :pending,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status::TaggedSymbol
                )
              SUCCESS =
                T.let(
                  :success,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status::TaggedSymbol
                )
              FAILURE =
                T.let(
                  :failure,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # The status of the order.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            SUCCESS =
              T.let(
                :success,
                Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            FAILURE =
              T.let(
                :failure,
                Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NumberOrderStatusUpdateWebhookEvent::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # Webhook delivery attempt number
        sig { returns(Integer) }
        attr_accessor :attempt

        # URL where the webhook was delivered
        sig { returns(String) }
        attr_accessor :delivered_to

        sig do
          params(attempt: Integer, delivered_to: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Webhook delivery attempt number
          attempt:,
          # URL where the webhook was delivered
          delivered_to:
        )
        end

        sig { override.returns({ attempt: Integer, delivered_to: String }) }
        def to_hash
        end
      end
    end
  end
end
