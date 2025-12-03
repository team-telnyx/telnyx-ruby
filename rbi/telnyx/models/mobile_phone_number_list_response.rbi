# typed: strong

module Telnyx
  module Models
    class MobilePhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MobilePhoneNumberListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::MobilePhoneNumberListResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MobilePhoneNumberListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        returns(T.nilable(Telnyx::Models::MobilePhoneNumberListResponse::Meta))
      end
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Models::MobilePhoneNumberListResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MobilePhoneNumberListResponse::Data::OrHash
            ],
          meta: Telnyx::Models::MobilePhoneNumberListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::MobilePhoneNumberListResponse::Data],
            meta: Telnyx::Models::MobilePhoneNumberListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MobilePhoneNumberListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding
            )
          )
        end
        attr_reader :call_forwarding

        sig do
          params(
            call_forwarding:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding::OrHash
          ).void
        end
        attr_writer :call_forwarding

        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording
            )
          )
        end
        attr_reader :call_recording

        sig do
          params(
            call_recording:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::OrHash
          ).void
        end
        attr_writer :call_recording

        # Indicates if caller ID name is enabled.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :caller_id_name_enabled

        sig { params(caller_id_name_enabled: T::Boolean).void }
        attr_writer :caller_id_name_enabled

        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobilePhoneNumberListResponse::Data::CnamListing
            )
          )
        end
        attr_reader :cnam_listing

        sig do
          params(
            cnam_listing:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::CnamListing::OrHash
          ).void
        end
        attr_writer :cnam_listing

        # The ID of the connection associated with this number.
        sig { returns(T.nilable(String)) }
        attr_accessor :connection_id

        # A customer reference string.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_reference

        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobilePhoneNumberListResponse::Data::Inbound
            )
          )
        end
        attr_reader :inbound

        sig do
          params(
            inbound:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::Inbound::OrHash
          ).void
        end
        attr_writer :inbound

        # The inbound call screening setting.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobilePhoneNumberListResponse::Data::InboundCallScreening::TaggedSymbol
            )
          )
        end
        attr_accessor :inbound_call_screening

        # The noise suppression setting.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobilePhoneNumberListResponse::Data::NoiseSuppression::TaggedSymbol
            )
          )
        end
        attr_reader :noise_suppression

        sig do
          params(
            noise_suppression:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::NoiseSuppression::OrSymbol
          ).void
        end
        attr_writer :noise_suppression

        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobilePhoneNumberListResponse::Data::Outbound
            )
          )
        end
        attr_reader :outbound

        sig do
          params(
            outbound:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::Outbound::OrHash
          ).void
        end
        attr_writer :outbound

        # A list of tags associated with the number.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The name of the connection.
        sig { returns(T.nilable(String)) }
        attr_accessor :connection_name

        # The type of the connection.
        sig { returns(T.nilable(String)) }
        attr_accessor :connection_type

        # The ISO 3166-1 alpha-2 country code of the number.
        sig { returns(T.nilable(String)) }
        attr_reader :country_iso_alpha2

        sig { params(country_iso_alpha2: String).void }
        attr_writer :country_iso_alpha2

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Indicates if mobile voice is enabled.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :mobile_voice_enabled

        sig { params(mobile_voice_enabled: T::Boolean).void }
        attr_writer :mobile_voice_enabled

        # The +E.164-formatted phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # The ID of the SIM card associated with this number.
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_id

        sig { params(sim_card_id: String).void }
        attr_writer :sim_card_id

        # The status of the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # ISO 8601 formatted date indicating when the resource was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            call_forwarding:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding::OrHash,
            call_recording:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::OrHash,
            caller_id_name_enabled: T::Boolean,
            cnam_listing:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::CnamListing::OrHash,
            connection_id: T.nilable(String),
            connection_name: T.nilable(String),
            connection_type: T.nilable(String),
            country_iso_alpha2: String,
            created_at: Time,
            customer_reference: T.nilable(String),
            inbound:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::Inbound::OrHash,
            inbound_call_screening:
              T.nilable(
                Telnyx::Models::MobilePhoneNumberListResponse::Data::InboundCallScreening::OrSymbol
              ),
            mobile_voice_enabled: T::Boolean,
            noise_suppression:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::NoiseSuppression::OrSymbol,
            outbound:
              Telnyx::Models::MobilePhoneNumberListResponse::Data::Outbound::OrHash,
            phone_number: String,
            record_type: String,
            sim_card_id: String,
            status: String,
            tags: T::Array[String],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          call_forwarding: nil,
          call_recording: nil,
          # Indicates if caller ID name is enabled.
          caller_id_name_enabled: nil,
          cnam_listing: nil,
          # The ID of the connection associated with this number.
          connection_id: nil,
          # The name of the connection.
          connection_name: nil,
          # The type of the connection.
          connection_type: nil,
          # The ISO 3166-1 alpha-2 country code of the number.
          country_iso_alpha2: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # A customer reference string.
          customer_reference: nil,
          inbound: nil,
          # The inbound call screening setting.
          inbound_call_screening: nil,
          # Indicates if mobile voice is enabled.
          mobile_voice_enabled: nil,
          # The noise suppression setting.
          noise_suppression: nil,
          outbound: nil,
          # The +E.164-formatted phone number.
          phone_number: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # The ID of the SIM card associated with this number.
          sim_card_id: nil,
          # The status of the phone number.
          status: nil,
          # A list of tags associated with the number.
          tags: nil,
          # ISO 8601 formatted date indicating when the resource was last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              call_forwarding:
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding,
              call_recording:
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording,
              caller_id_name_enabled: T::Boolean,
              cnam_listing:
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CnamListing,
              connection_id: T.nilable(String),
              connection_name: T.nilable(String),
              connection_type: T.nilable(String),
              country_iso_alpha2: String,
              created_at: Time,
              customer_reference: T.nilable(String),
              inbound:
                Telnyx::Models::MobilePhoneNumberListResponse::Data::Inbound,
              inbound_call_screening:
                T.nilable(
                  Telnyx::Models::MobilePhoneNumberListResponse::Data::InboundCallScreening::TaggedSymbol
                ),
              mobile_voice_enabled: T::Boolean,
              noise_suppression:
                Telnyx::Models::MobilePhoneNumberListResponse::Data::NoiseSuppression::TaggedSymbol,
              outbound:
                Telnyx::Models::MobilePhoneNumberListResponse::Data::Outbound,
              phone_number: String,
              record_type: String,
              sim_card_id: String,
              status: String,
              tags: T::Array[String],
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class CallForwarding < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :call_forwarding_enabled

          sig { params(call_forwarding_enabled: T::Boolean).void }
          attr_writer :call_forwarding_enabled

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding::ForwardingType::TaggedSymbol
              )
            )
          end
          attr_accessor :forwarding_type

          sig { returns(T.nilable(String)) }
          attr_accessor :forwards_to

          sig do
            params(
              call_forwarding_enabled: T::Boolean,
              forwarding_type:
                T.nilable(
                  Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding::ForwardingType::OrSymbol
                ),
              forwards_to: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            call_forwarding_enabled: nil,
            forwarding_type: nil,
            forwards_to: nil
          )
          end

          sig do
            override.returns(
              {
                call_forwarding_enabled: T::Boolean,
                forwarding_type:
                  T.nilable(
                    Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding::ForwardingType::TaggedSymbol
                  ),
                forwards_to: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module ForwardingType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding::ForwardingType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALWAYS =
              T.let(
                :always,
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding::ForwardingType::TaggedSymbol
              )
            ON_FAILURE =
              T.let(
                :"on-failure",
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding::ForwardingType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MobilePhoneNumberListResponse::Data::CallForwarding::ForwardingType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CallRecording < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingChannels::TaggedSymbol
              )
            )
          end
          attr_reader :inbound_call_recording_channels

          sig do
            params(
              inbound_call_recording_channels:
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingChannels::OrSymbol
            ).void
          end
          attr_writer :inbound_call_recording_channels

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :inbound_call_recording_enabled

          sig { params(inbound_call_recording_enabled: T::Boolean).void }
          attr_writer :inbound_call_recording_enabled

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingFormat::TaggedSymbol
              )
            )
          end
          attr_reader :inbound_call_recording_format

          sig do
            params(
              inbound_call_recording_format:
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingFormat::OrSymbol
            ).void
          end
          attr_writer :inbound_call_recording_format

          sig do
            params(
              inbound_call_recording_channels:
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingChannels::OrSymbol,
              inbound_call_recording_enabled: T::Boolean,
              inbound_call_recording_format:
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingFormat::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            inbound_call_recording_channels: nil,
            inbound_call_recording_enabled: nil,
            inbound_call_recording_format: nil
          )
          end

          sig do
            override.returns(
              {
                inbound_call_recording_channels:
                  Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingChannels::TaggedSymbol,
                inbound_call_recording_enabled: T::Boolean,
                inbound_call_recording_format:
                  Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingFormat::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module InboundCallRecordingChannels
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingChannels
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SINGLE =
              T.let(
                :single,
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingChannels::TaggedSymbol
              )
            DUAL =
              T.let(
                :dual,
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingChannels::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingChannels::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module InboundCallRecordingFormat
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingFormat
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WAV =
              T.let(
                :wav,
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingFormat::TaggedSymbol
              )
            MP3 =
              T.let(
                :mp3,
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingFormat::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MobilePhoneNumberListResponse::Data::CallRecording::InboundCallRecordingFormat::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CnamListing < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MobilePhoneNumberListResponse::Data::CnamListing,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :cnam_listing_details

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :cnam_listing_enabled

          sig { params(cnam_listing_enabled: T::Boolean).void }
          attr_writer :cnam_listing_enabled

          sig do
            params(
              cnam_listing_details: T.nilable(String),
              cnam_listing_enabled: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(cnam_listing_details: nil, cnam_listing_enabled: nil)
          end

          sig do
            override.returns(
              {
                cnam_listing_details: T.nilable(String),
                cnam_listing_enabled: T::Boolean
              }
            )
          end
          def to_hash
          end
        end

        class Inbound < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MobilePhoneNumberListResponse::Data::Inbound,
                Telnyx::Internal::AnyHash
              )
            end

          # The ID of the app that will intercept inbound calls.
          sig { returns(T.nilable(String)) }
          attr_accessor :interception_app_id

          # The name of the app that will intercept inbound calls.
          sig { returns(T.nilable(String)) }
          attr_accessor :interception_app_name

          sig do
            params(
              interception_app_id: T.nilable(String),
              interception_app_name: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the app that will intercept inbound calls.
            interception_app_id: nil,
            # The name of the app that will intercept inbound calls.
            interception_app_name: nil
          )
          end

          sig do
            override.returns(
              {
                interception_app_id: T.nilable(String),
                interception_app_name: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        # The inbound call screening setting.
        module InboundCallScreening
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MobilePhoneNumberListResponse::Data::InboundCallScreening
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISABLED =
            T.let(
              :disabled,
              Telnyx::Models::MobilePhoneNumberListResponse::Data::InboundCallScreening::TaggedSymbol
            )
          REJECT_CALLS =
            T.let(
              :reject_calls,
              Telnyx::Models::MobilePhoneNumberListResponse::Data::InboundCallScreening::TaggedSymbol
            )
          FLAG_CALLS =
            T.let(
              :flag_calls,
              Telnyx::Models::MobilePhoneNumberListResponse::Data::InboundCallScreening::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MobilePhoneNumberListResponse::Data::InboundCallScreening::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The noise suppression setting.
        module NoiseSuppression
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MobilePhoneNumberListResponse::Data::NoiseSuppression
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND =
            T.let(
              :inbound,
              Telnyx::Models::MobilePhoneNumberListResponse::Data::NoiseSuppression::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::Models::MobilePhoneNumberListResponse::Data::NoiseSuppression::TaggedSymbol
            )
          BOTH =
            T.let(
              :both,
              Telnyx::Models::MobilePhoneNumberListResponse::Data::NoiseSuppression::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Telnyx::Models::MobilePhoneNumberListResponse::Data::NoiseSuppression::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MobilePhoneNumberListResponse::Data::NoiseSuppression::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Outbound < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MobilePhoneNumberListResponse::Data::Outbound,
                Telnyx::Internal::AnyHash
              )
            end

          # The ID of the app that will intercept outbound calls.
          sig { returns(T.nilable(String)) }
          attr_accessor :interception_app_id

          # The name of the app that will intercept outbound calls.
          sig { returns(T.nilable(String)) }
          attr_accessor :interception_app_name

          sig do
            params(
              interception_app_id: T.nilable(String),
              interception_app_name: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the app that will intercept outbound calls.
            interception_app_id: nil,
            # The name of the app that will intercept outbound calls.
            interception_app_name: nil
          )
          end

          sig do
            override.returns(
              {
                interception_app_id: T.nilable(String),
                interception_app_name: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MobilePhoneNumberListResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_pages

        sig { params(total_pages: Integer).void }
        attr_writer :total_pages

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_results

        sig { params(total_results: Integer).void }
        attr_writer :total_results

        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            total_pages: Integer,
            total_results: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          page_number: nil,
          page_size: nil,
          total_pages: nil,
          total_results: nil
        )
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
              total_pages: Integer,
              total_results: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
