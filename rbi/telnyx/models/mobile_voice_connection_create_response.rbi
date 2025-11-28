# typed: strong

module Telnyx
  module Models
    class MobileVoiceConnectionCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MobileVoiceConnectionCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::MobileVoiceConnectionCreateResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::MobileVoiceConnectionCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Indicates if the connection is active.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active

        sig { params(active: T::Boolean).void }
        attr_writer :active

        # The name of the connection.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_name

        sig { params(connection_name: String).void }
        attr_writer :connection_name

        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::Inbound
            )
          )
        end
        attr_reader :inbound

        sig do
          params(
            inbound:
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::Inbound::OrHash
          ).void
        end
        attr_writer :inbound

        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::Outbound
            )
          )
        end
        attr_reader :outbound

        sig do
          params(
            outbound:
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::Outbound::OrHash
          ).void
        end
        attr_writer :outbound

        # A list of tags associated with the connection.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # The API version for webhooks.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::WebhookAPIVersion::TaggedSymbol
            )
          )
        end
        attr_accessor :webhook_api_version

        # The failover URL where webhooks are sent.
        sig { returns(T.nilable(String)) }
        attr_accessor :webhook_event_failover_url

        # The URL where webhooks are sent.
        sig { returns(T.nilable(String)) }
        attr_accessor :webhook_event_url

        # The timeout for webhooks in seconds.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :webhook_timeout_secs

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            active: T::Boolean,
            connection_name: String,
            created_at: Time,
            inbound:
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::Inbound::OrHash,
            outbound:
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::Outbound::OrHash,
            record_type:
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::RecordType::OrSymbol,
            tags: T::Array[String],
            updated_at: Time,
            webhook_api_version:
              T.nilable(
                Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::WebhookAPIVersion::OrSymbol
              ),
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: T.nilable(String),
            webhook_timeout_secs: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # Indicates if the connection is active.
          active: nil,
          # The name of the connection.
          connection_name: nil,
          created_at: nil,
          inbound: nil,
          outbound: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # A list of tags associated with the connection.
          tags: nil,
          updated_at: nil,
          # The API version for webhooks.
          webhook_api_version: nil,
          # The failover URL where webhooks are sent.
          webhook_event_failover_url: nil,
          # The URL where webhooks are sent.
          webhook_event_url: nil,
          # The timeout for webhooks in seconds.
          webhook_timeout_secs: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              active: T::Boolean,
              connection_name: String,
              created_at: Time,
              inbound:
                Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::Inbound,
              outbound:
                Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::Outbound,
              record_type:
                Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::RecordType::TaggedSymbol,
              tags: T::Array[String],
              updated_at: Time,
              webhook_api_version:
                T.nilable(
                  Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::WebhookAPIVersion::TaggedSymbol
                ),
              webhook_event_failover_url: T.nilable(String),
              webhook_event_url: T.nilable(String),
              webhook_timeout_secs: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end

        class Inbound < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::Inbound,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_accessor :channel_limit

          sig do
            params(channel_limit: T.nilable(Integer)).returns(T.attached_class)
          end
          def self.new(channel_limit: nil)
          end

          sig { override.returns({ channel_limit: T.nilable(Integer) }) }
          def to_hash
          end
        end

        class Outbound < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::Outbound,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_accessor :channel_limit

          sig { returns(T.nilable(String)) }
          attr_accessor :outbound_voice_profile_id

          sig do
            params(
              channel_limit: T.nilable(Integer),
              outbound_voice_profile_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(channel_limit: nil, outbound_voice_profile_id: nil)
          end

          sig do
            override.returns(
              {
                channel_limit: T.nilable(Integer),
                outbound_voice_profile_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MOBILE_VOICE_CONNECTION =
            T.let(
              :mobile_voice_connection,
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The API version for webhooks.
        module WebhookAPIVersion
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::WebhookAPIVersion
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEBHOOK_API_VERSION_1 =
            T.let(
              :"1",
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::WebhookAPIVersion::TaggedSymbol
            )
          WEBHOOK_API_VERSION_2 =
            T.let(
              :"2",
              Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::WebhookAPIVersion::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MobileVoiceConnectionCreateResponse::Data::WebhookAPIVersion::TaggedSymbol
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
