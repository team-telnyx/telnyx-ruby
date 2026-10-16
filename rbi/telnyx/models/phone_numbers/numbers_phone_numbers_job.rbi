# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class NumbersPhoneNumbersJob < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Telnyx::PhoneNumbersJobPhoneNumber])) }
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers: T::Array[Telnyx::PhoneNumbersJobPhoneNumber::OrHash]
          ).void
        end
        attr_writer :phone_numbers

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # ISO 8601 formatted date indicating when the estimated time of completion of the
        # background job.
        sig { returns(T.nilable(Time)) }
        attr_reader :etc

        sig { params(etc: Time).void }
        attr_writer :etc

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::FailedOperation
              ]
            )
          )
        end
        attr_reader :failed_operations

        sig do
          params(
            failed_operations:
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::FailedOperation::OrHash
              ]
          ).void
        end
        attr_writer :failed_operations

        # Effective parameters saved when the job was created, not a snapshot of the
        # original HTTP request or current phone-number settings. Update jobs include the
        # saved update fields; emergency-settings jobs include the saved emergency fields;
        # delete jobs include only targets. Absent fields are omitted, and saved false,
        # null and empty values are preserved. Tags may be normalized to arrays;
        # filter-created jobs contain resolved target identifiers rather than the original
        # filters. Historical jobs with no saved arguments return an empty object.
        sig do
          returns(
            T.nilable(Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters)
          )
        end
        attr_reader :parameters

        sig do
          params(
            parameters:
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::OrHash
          ).void
        end
        attr_writer :parameters

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::PendingOperation
              ]
            )
          )
        end
        attr_reader :pending_operations

        sig do
          params(
            pending_operations:
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::PendingOperation::OrHash
              ]
          ).void
        end
        attr_writer :pending_operations

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # Indicates the completion status of the background update.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::SuccessfulOperation
              ]
            )
          )
        end
        attr_reader :successful_operations

        sig do
          params(
            successful_operations:
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::SuccessfulOperation::OrHash
              ]
          ).void
        end
        attr_writer :successful_operations

        # Identifies the type of the background job.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            created_at: String,
            etc: Time,
            failed_operations:
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::FailedOperation::OrHash
              ],
            parameters:
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::OrHash,
            pending_operations:
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::PendingOperation::OrHash
              ],
            phone_numbers: T::Array[Telnyx::PhoneNumbersJobPhoneNumber::OrHash],
            record_type: String,
            status:
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status::OrSymbol,
            successful_operations:
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::SuccessfulOperation::OrHash
              ],
            type: Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Type::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # ISO 8601 formatted date indicating when the estimated time of completion of the
          # background job.
          etc: nil,
          failed_operations: nil,
          # Effective parameters saved when the job was created, not a snapshot of the
          # original HTTP request or current phone-number settings. Update jobs include the
          # saved update fields; emergency-settings jobs include the saved emergency fields;
          # delete jobs include only targets. Absent fields are omitted, and saved false,
          # null and empty values are preserved. Tags may be normalized to arrays;
          # filter-created jobs contain resolved target identifiers rather than the original
          # filters. Historical jobs with no saved arguments return an empty object.
          parameters: nil,
          pending_operations: nil,
          phone_numbers: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # Indicates the completion status of the background update.
          status: nil,
          successful_operations: nil,
          # Identifies the type of the background job.
          type: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              etc: Time,
              failed_operations:
                T::Array[
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::FailedOperation
                ],
              parameters:
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters,
              pending_operations:
                T::Array[
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::PendingOperation
                ],
              phone_numbers: T::Array[Telnyx::PhoneNumbersJobPhoneNumber],
              record_type: String,
              status:
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status::TaggedSymbol,
              successful_operations:
                T::Array[
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::SuccessfulOperation
                ],
              type:
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Type::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        class FailedOperation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::FailedOperation,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number's ID
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(T::Array[Telnyx::NumbersError73c9788e53])) }
          attr_reader :errors

          sig do
            params(
              errors: T::Array[Telnyx::NumbersError73c9788e53::OrHash]
            ).void
          end
          attr_writer :errors

          # The phone number in e164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          sig do
            params(
              id: String,
              errors: T::Array[Telnyx::NumbersError73c9788e53::OrHash],
              phone_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The phone number's ID
            id: nil,
            errors: nil,
            # The phone number in e164 format.
            phone_number: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                errors: T::Array[Telnyx::NumbersError73c9788e53],
                phone_number: String
              }
            )
          end
          def to_hash
          end
        end

        class Parameters < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters,
                Telnyx::Internal::AnyHash
              )
            end

          # Saved add_tags for an update_phone_numbers job. Values reflect creation-time
          # normalization.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :add_tags

          # Saved billing_group_id supplied for an update_phone_numbers job.
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_group_id

          # Saved connection_id supplied for an update_phone_numbers job.
          sig { returns(T.nilable(String)) }
          attr_accessor :connection_id

          # Saved customer_reference supplied for an update_phone_numbers job.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_reference

          # Saved deletion_lock_enabled supplied for an update_phone_numbers job.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :deletion_lock_enabled

          # Saved emergency address identifier for an update_emergency_settings job. An
          # explicitly supplied null is preserved.
          sig { returns(T.nilable(String)) }
          attr_accessor :emergency_address_id

          # Saved emergency-services setting for an update_emergency_settings job.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :emergency_enabled

          # Saved external_pin supplied for an update_phone_numbers job.
          sig { returns(T.nilable(String)) }
          attr_accessor :external_pin

          # Saved hd_voice_enabled supplied for an update_phone_numbers job.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :hd_voice_enabled

          # Saved target phone numbers in E.164 format and/or identifiers. Jobs created
          # using filters contain the resolved identifiers, not the original filter
          # expression. Stored identifier types are preserved.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::PhoneNumber::Variants
                ]
              )
            )
          end
          attr_reader :phone_numbers

          sig do
            params(
              phone_numbers:
                T::Array[
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::PhoneNumber::Variants
                ]
            ).void
          end
          attr_writer :phone_numbers

          # Saved remove_tags for an update_phone_numbers job. Values reflect creation-time
          # normalization.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :remove_tags

          # Saved tags for an update_phone_numbers job. Values reflect creation-time
          # normalization.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :tags

          # Saved voice settings for an update_phone_numbers job, using the public field
          # names and nesting. Only settings present at creation are returned.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice
              )
            )
          end
          attr_reader :voice

          sig do
            params(
              voice:
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::OrHash
            ).void
          end
          attr_writer :voice

          # Effective parameters saved when the job was created, not a snapshot of the
          # original HTTP request or current phone-number settings. Update jobs include the
          # saved update fields; emergency-settings jobs include the saved emergency fields;
          # delete jobs include only targets. Absent fields are omitted, and saved false,
          # null and empty values are preserved. Tags may be normalized to arrays;
          # filter-created jobs contain resolved target identifiers rather than the original
          # filters. Historical jobs with no saved arguments return an empty object.
          sig do
            params(
              add_tags: T.nilable(T::Array[String]),
              billing_group_id: T.nilable(String),
              connection_id: T.nilable(String),
              customer_reference: T.nilable(String),
              deletion_lock_enabled: T.nilable(T::Boolean),
              emergency_address_id: T.nilable(String),
              emergency_enabled: T.nilable(T::Boolean),
              external_pin: T.nilable(String),
              hd_voice_enabled: T.nilable(T::Boolean),
              phone_numbers:
                T::Array[
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::PhoneNumber::Variants
                ],
              remove_tags: T.nilable(T::Array[String]),
              tags: T.nilable(T::Array[String]),
              voice:
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Saved add_tags for an update_phone_numbers job. Values reflect creation-time
            # normalization.
            add_tags: nil,
            # Saved billing_group_id supplied for an update_phone_numbers job.
            billing_group_id: nil,
            # Saved connection_id supplied for an update_phone_numbers job.
            connection_id: nil,
            # Saved customer_reference supplied for an update_phone_numbers job.
            customer_reference: nil,
            # Saved deletion_lock_enabled supplied for an update_phone_numbers job.
            deletion_lock_enabled: nil,
            # Saved emergency address identifier for an update_emergency_settings job. An
            # explicitly supplied null is preserved.
            emergency_address_id: nil,
            # Saved emergency-services setting for an update_emergency_settings job.
            emergency_enabled: nil,
            # Saved external_pin supplied for an update_phone_numbers job.
            external_pin: nil,
            # Saved hd_voice_enabled supplied for an update_phone_numbers job.
            hd_voice_enabled: nil,
            # Saved target phone numbers in E.164 format and/or identifiers. Jobs created
            # using filters contain the resolved identifiers, not the original filter
            # expression. Stored identifier types are preserved.
            phone_numbers: nil,
            # Saved remove_tags for an update_phone_numbers job. Values reflect creation-time
            # normalization.
            remove_tags: nil,
            # Saved tags for an update_phone_numbers job. Values reflect creation-time
            # normalization.
            tags: nil,
            # Saved voice settings for an update_phone_numbers job, using the public field
            # names and nesting. Only settings present at creation are returned.
            voice: nil
          )
          end

          sig do
            override.returns(
              {
                add_tags: T.nilable(T::Array[String]),
                billing_group_id: T.nilable(String),
                connection_id: T.nilable(String),
                customer_reference: T.nilable(String),
                deletion_lock_enabled: T.nilable(T::Boolean),
                emergency_address_id: T.nilable(String),
                emergency_enabled: T.nilable(T::Boolean),
                external_pin: T.nilable(String),
                hd_voice_enabled: T.nilable(T::Boolean),
                phone_numbers:
                  T::Array[
                    Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::PhoneNumber::Variants
                  ],
                remove_tags: T.nilable(T::Array[String]),
                tags: T.nilable(T::Array[String]),
                voice:
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice
              }
            )
          end
          def to_hash
          end

          module PhoneNumber
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Integer) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::PhoneNumber::Variants
                ]
              )
            end
            def self.variants
            end
          end

          class Voice < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallForwarding
                )
              )
            end
            attr_reader :call_forwarding

            sig do
              params(
                call_forwarding:
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallForwarding::OrHash
              ).void
            end
            attr_writer :call_forwarding

            sig do
              returns(
                T.nilable(
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallRecording
                )
              )
            end
            attr_reader :call_recording

            sig do
              params(
                call_recording:
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallRecording::OrHash
              ).void
            end
            attr_writer :call_recording

            # Saved caller_id_name_enabled setting.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :caller_id_name_enabled

            sig do
              returns(
                T.nilable(
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CnamListing
                )
              )
            end
            attr_reader :cnam_listing

            sig do
              params(
                cnam_listing:
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CnamListing::OrHash
              ).void
            end
            attr_writer :cnam_listing

            # Saved inbound_call_screening setting.
            sig { returns(T.nilable(String)) }
            attr_accessor :inbound_call_screening

            sig do
              returns(
                T.nilable(
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::MediaFeatures
                )
              )
            end
            attr_reader :media_features

            sig do
              params(
                media_features:
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::MediaFeatures::OrHash
              ).void
            end
            attr_writer :media_features

            # Saved tech_prefix_enabled setting.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :tech_prefix_enabled

            # Saved usage_payment_method setting.
            sig { returns(T.nilable(String)) }
            attr_accessor :usage_payment_method

            # Saved voice settings for an update_phone_numbers job, using the public field
            # names and nesting. Only settings present at creation are returned.
            sig do
              params(
                call_forwarding:
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallForwarding::OrHash,
                call_recording:
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallRecording::OrHash,
                caller_id_name_enabled: T.nilable(T::Boolean),
                cnam_listing:
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CnamListing::OrHash,
                inbound_call_screening: T.nilable(String),
                media_features:
                  Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::MediaFeatures::OrHash,
                tech_prefix_enabled: T.nilable(T::Boolean),
                usage_payment_method: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              call_forwarding: nil,
              call_recording: nil,
              # Saved caller_id_name_enabled setting.
              caller_id_name_enabled: nil,
              cnam_listing: nil,
              # Saved inbound_call_screening setting.
              inbound_call_screening: nil,
              media_features: nil,
              # Saved tech_prefix_enabled setting.
              tech_prefix_enabled: nil,
              # Saved usage_payment_method setting.
              usage_payment_method: nil
            )
            end

            sig do
              override.returns(
                {
                  call_forwarding:
                    Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallForwarding,
                  call_recording:
                    Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallRecording,
                  caller_id_name_enabled: T.nilable(T::Boolean),
                  cnam_listing:
                    Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CnamListing,
                  inbound_call_screening: T.nilable(String),
                  media_features:
                    Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::MediaFeatures,
                  tech_prefix_enabled: T.nilable(T::Boolean),
                  usage_payment_method: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class CallForwarding < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallForwarding,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Saved call_forwarding_enabled setting.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :call_forwarding_enabled

              # Saved forwarding_type setting.
              sig { returns(T.nilable(String)) }
              attr_accessor :forwarding_type

              # Saved forwards_to setting.
              sig { returns(T.nilable(String)) }
              attr_accessor :forwards_to

              sig do
                params(
                  call_forwarding_enabled: T.nilable(T::Boolean),
                  forwarding_type: T.nilable(String),
                  forwards_to: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Saved call_forwarding_enabled setting.
                call_forwarding_enabled: nil,
                # Saved forwarding_type setting.
                forwarding_type: nil,
                # Saved forwards_to setting.
                forwards_to: nil
              )
              end

              sig do
                override.returns(
                  {
                    call_forwarding_enabled: T.nilable(T::Boolean),
                    forwarding_type: T.nilable(String),
                    forwards_to: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class CallRecording < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CallRecording,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Saved inbound_call_recording_channels setting.
              sig { returns(T.nilable(String)) }
              attr_accessor :inbound_call_recording_channels

              # Saved inbound_call_recording_enabled setting.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :inbound_call_recording_enabled

              # Saved inbound_call_recording_format setting.
              sig { returns(T.nilable(String)) }
              attr_accessor :inbound_call_recording_format

              # Saved record_continue_on_hold setting.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :record_continue_on_hold

              sig do
                params(
                  inbound_call_recording_channels: T.nilable(String),
                  inbound_call_recording_enabled: T.nilable(T::Boolean),
                  inbound_call_recording_format: T.nilable(String),
                  record_continue_on_hold: T.nilable(T::Boolean)
                ).returns(T.attached_class)
              end
              def self.new(
                # Saved inbound_call_recording_channels setting.
                inbound_call_recording_channels: nil,
                # Saved inbound_call_recording_enabled setting.
                inbound_call_recording_enabled: nil,
                # Saved inbound_call_recording_format setting.
                inbound_call_recording_format: nil,
                # Saved record_continue_on_hold setting.
                record_continue_on_hold: nil
              )
              end

              sig do
                override.returns(
                  {
                    inbound_call_recording_channels: T.nilable(String),
                    inbound_call_recording_enabled: T.nilable(T::Boolean),
                    inbound_call_recording_format: T.nilable(String),
                    record_continue_on_hold: T.nilable(T::Boolean)
                  }
                )
              end
              def to_hash
              end
            end

            class CnamListing < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::CnamListing,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Saved cnam_listing_details setting.
              sig { returns(T.nilable(String)) }
              attr_accessor :cnam_listing_details

              # Saved cnam_listing_enabled setting.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :cnam_listing_enabled

              sig do
                params(
                  cnam_listing_details: T.nilable(String),
                  cnam_listing_enabled: T.nilable(T::Boolean)
                ).returns(T.attached_class)
              end
              def self.new(
                # Saved cnam_listing_details setting.
                cnam_listing_details: nil,
                # Saved cnam_listing_enabled setting.
                cnam_listing_enabled: nil
              )
              end

              sig do
                override.returns(
                  {
                    cnam_listing_details: T.nilable(String),
                    cnam_listing_enabled: T.nilable(T::Boolean)
                  }
                )
              end
              def to_hash
              end
            end

            class MediaFeatures < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Parameters::Voice::MediaFeatures,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Saved accept_any_rtp_packets_enabled setting.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :accept_any_rtp_packets_enabled

              # Saved rtp_auto_adjust_enabled setting.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :rtp_auto_adjust_enabled

              # Saved t38_fax_gateway_enabled setting.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :t38_fax_gateway_enabled

              sig do
                params(
                  accept_any_rtp_packets_enabled: T.nilable(T::Boolean),
                  rtp_auto_adjust_enabled: T.nilable(T::Boolean),
                  t38_fax_gateway_enabled: T.nilable(T::Boolean)
                ).returns(T.attached_class)
              end
              def self.new(
                # Saved accept_any_rtp_packets_enabled setting.
                accept_any_rtp_packets_enabled: nil,
                # Saved rtp_auto_adjust_enabled setting.
                rtp_auto_adjust_enabled: nil,
                # Saved t38_fax_gateway_enabled setting.
                t38_fax_gateway_enabled: nil
              )
              end

              sig do
                override.returns(
                  {
                    accept_any_rtp_packets_enabled: T.nilable(T::Boolean),
                    rtp_auto_adjust_enabled: T.nilable(T::Boolean),
                    t38_fax_gateway_enabled: T.nilable(T::Boolean)
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class PendingOperation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::PendingOperation,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number's ID
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The phone number in e164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # The phone numbers pending confirmation on update results. Entries in this list
          # are transient, and will be moved to either successful_operations or
          # failed_operations once the processing is done.
          sig do
            params(id: String, phone_number: String).returns(T.attached_class)
          end
          def self.new(
            # The phone number's ID
            id: nil,
            # The phone number in e164 format.
            phone_number: nil
          )
          end

          sig { override.returns({ id: String, phone_number: String }) }
          def to_hash
          end
        end

        # Indicates the completion status of the background update.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class SuccessfulOperation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::SuccessfulOperation,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number's ID
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The phone number in e164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # The phone numbers successfully updated.
          sig do
            params(id: String, phone_number: String).returns(T.attached_class)
          end
          def self.new(
            # The phone number's ID
            id: nil,
            # The phone number in e164 format.
            phone_number: nil
          )
          end

          sig { override.returns({ id: String, phone_number: String }) }
          def to_hash
          end
        end

        # Identifies the type of the background job.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UPDATE_EMERGENCY_SETTINGS =
            T.let(
              :update_emergency_settings,
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Type::TaggedSymbol
            )
          DELETE_PHONE_NUMBERS =
            T.let(
              :delete_phone_numbers,
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Type::TaggedSymbol
            )
          UPDATE_PHONE_NUMBERS =
            T.let(
              :update_phone_numbers,
              Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::Type::TaggedSymbol
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
