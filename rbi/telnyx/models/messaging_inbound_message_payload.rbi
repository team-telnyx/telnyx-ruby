# typed: strong

module Telnyx
  module Models
    class MessagingInboundMessagePayload < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MessagingInboundMessagePayload,
            Telnyx::Internal::AnyHash
          )
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig do
        returns(T.nilable(T::Array[Telnyx::MessagingInboundMessagePayload::Cc]))
      end
      attr_reader :cc

      sig do
        params(
          cc: T::Array[Telnyx::MessagingInboundMessagePayload::Cc::OrHash]
        ).void
      end
      attr_writer :cc

      # Not used for inbound messages.
      sig { returns(T.nilable(Time)) }
      attr_accessor :completed_at

      sig { returns(T.nilable(Telnyx::MessagingInboundMessagePayload::Cost)) }
      attr_reader :cost

      sig do
        params(
          cost: T.nilable(Telnyx::MessagingInboundMessagePayload::Cost::OrHash)
        ).void
      end
      attr_writer :cost

      # Detailed breakdown of the message cost components.
      sig do
        returns(
          T.nilable(Telnyx::MessagingInboundMessagePayload::CostBreakdown)
        )
      end
      attr_reader :cost_breakdown

      sig do
        params(
          cost_breakdown:
            T.nilable(
              Telnyx::MessagingInboundMessagePayload::CostBreakdown::OrHash
            )
        ).void
      end
      attr_writer :cost_breakdown

      # The direction of the message. Inbound messages are sent to you whereas outbound
      # messages are sent from you.
      sig do
        returns(
          T.nilable(
            Telnyx::MessagingInboundMessagePayload::Direction::TaggedSymbol
          )
        )
      end
      attr_reader :direction

      sig do
        params(
          direction: Telnyx::MessagingInboundMessagePayload::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # Encoding scheme used for the message body.
      sig { returns(T.nilable(String)) }
      attr_reader :encoding

      sig { params(encoding: String).void }
      attr_writer :encoding

      # These errors may point at addressees when referring to unsuccessful/unconfirmed
      # delivery statuses.
      sig { returns(T.nilable(T::Array[Telnyx::MessagingError0b38e7044b])) }
      attr_reader :errors

      sig do
        params(errors: T::Array[Telnyx::MessagingError0b38e7044b::OrHash]).void
      end
      attr_writer :errors

      sig { returns(T.nilable(Telnyx::MessagingInboundMessagePayload::From)) }
      attr_reader :from

      sig do
        params(from: Telnyx::MessagingInboundMessagePayload::From::OrHash).void
      end
      attr_writer :from

      sig do
        returns(
          T.nilable(T::Array[Telnyx::MessagingInboundMessagePayload::Media])
        )
      end
      attr_reader :media

      sig do
        params(
          media: T::Array[Telnyx::MessagingInboundMessagePayload::Media::OrHash]
        ).void
      end
      attr_writer :media

      # Unique identifier for a messaging profile.
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      # The number of characters in the message text
      sig { returns(T.nilable(Integer)) }
      attr_reader :num_chars

      sig { params(num_chars: Integer).void }
      attr_writer :num_chars

      # Unique identifier for a messaging profile.
      sig { returns(T.nilable(String)) }
      attr_reader :organization_id

      sig { params(organization_id: String).void }
      attr_writer :organization_id

      # Number of parts into which the message's body must be split.
      sig { returns(T.nilable(Integer)) }
      attr_reader :parts

      sig { params(parts: Integer).void }
      attr_writer :parts

      # ISO 8601 formatted date indicating when the message request was received.
      sig { returns(T.nilable(Time)) }
      attr_reader :received_at

      sig { params(received_at: Time).void }
      attr_writer :received_at

      # Identifies the type of the resource.
      sig do
        returns(
          T.nilable(
            Telnyx::MessagingInboundMessagePayload::RecordType::TaggedSymbol
          )
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type:
            Telnyx::MessagingInboundMessagePayload::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      # Not used for inbound messages.
      sig { returns(T.nilable(Time)) }
      attr_accessor :sent_at

      # Message subject.
      sig { returns(T.nilable(String)) }
      attr_accessor :subject

      # Tags associated with the resource.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Indicates whether the TCR campaign is billable.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :tcr_campaign_billable

      sig { params(tcr_campaign_billable: T::Boolean).void }
      attr_writer :tcr_campaign_billable

      # The Campaign Registry (TCR) campaign ID associated with the message.
      sig { returns(T.nilable(String)) }
      attr_accessor :tcr_campaign_id

      # The registration status of the TCR campaign.
      sig { returns(T.nilable(String)) }
      attr_accessor :tcr_campaign_registered

      # Message body (i.e., content) as a non-empty string.
      #
      # **Required for SMS**
      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      sig do
        returns(T.nilable(T::Array[Telnyx::MessagingInboundMessagePayload::To]))
      end
      attr_reader :to

      sig do
        params(
          to: T::Array[Telnyx::MessagingInboundMessagePayload::To::OrHash]
        ).void
      end
      attr_writer :to

      # The type of message. This value can be either 'sms' or 'mms'.
      sig do
        returns(
          T.nilable(Telnyx::MessagingInboundMessagePayload::Type::TaggedSymbol)
        )
      end
      attr_reader :type

      sig do
        params(
          type: Telnyx::MessagingInboundMessagePayload::Type::OrSymbol
        ).void
      end
      attr_writer :type

      # Not used for inbound messages.
      sig { returns(T.nilable(Time)) }
      attr_accessor :valid_until

      # The failover URL where webhooks related to this message will be sent if sending
      # to the primary URL fails.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_failover_url

      # The URL where webhooks related to this message will be sent.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_url

      sig do
        params(
          id: String,
          cc: T::Array[Telnyx::MessagingInboundMessagePayload::Cc::OrHash],
          completed_at: T.nilable(Time),
          cost: T.nilable(Telnyx::MessagingInboundMessagePayload::Cost::OrHash),
          cost_breakdown:
            T.nilable(
              Telnyx::MessagingInboundMessagePayload::CostBreakdown::OrHash
            ),
          direction:
            Telnyx::MessagingInboundMessagePayload::Direction::OrSymbol,
          encoding: String,
          errors: T::Array[Telnyx::MessagingError0b38e7044b::OrHash],
          from: Telnyx::MessagingInboundMessagePayload::From::OrHash,
          media:
            T::Array[Telnyx::MessagingInboundMessagePayload::Media::OrHash],
          messaging_profile_id: String,
          num_chars: Integer,
          organization_id: String,
          parts: Integer,
          received_at: Time,
          record_type:
            Telnyx::MessagingInboundMessagePayload::RecordType::OrSymbol,
          sent_at: T.nilable(Time),
          subject: T.nilable(String),
          tags: T::Array[String],
          tcr_campaign_billable: T::Boolean,
          tcr_campaign_id: T.nilable(String),
          tcr_campaign_registered: T.nilable(String),
          text: String,
          to: T::Array[Telnyx::MessagingInboundMessagePayload::To::OrHash],
          type: Telnyx::MessagingInboundMessagePayload::Type::OrSymbol,
          valid_until: T.nilable(Time),
          webhook_failover_url: T.nilable(String),
          webhook_url: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        cc: nil,
        # Not used for inbound messages.
        completed_at: nil,
        cost: nil,
        # Detailed breakdown of the message cost components.
        cost_breakdown: nil,
        # The direction of the message. Inbound messages are sent to you whereas outbound
        # messages are sent from you.
        direction: nil,
        # Encoding scheme used for the message body.
        encoding: nil,
        # These errors may point at addressees when referring to unsuccessful/unconfirmed
        # delivery statuses.
        errors: nil,
        from: nil,
        media: nil,
        # Unique identifier for a messaging profile.
        messaging_profile_id: nil,
        # The number of characters in the message text
        num_chars: nil,
        # Unique identifier for a messaging profile.
        organization_id: nil,
        # Number of parts into which the message's body must be split.
        parts: nil,
        # ISO 8601 formatted date indicating when the message request was received.
        received_at: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Not used for inbound messages.
        sent_at: nil,
        # Message subject.
        subject: nil,
        # Tags associated with the resource.
        tags: nil,
        # Indicates whether the TCR campaign is billable.
        tcr_campaign_billable: nil,
        # The Campaign Registry (TCR) campaign ID associated with the message.
        tcr_campaign_id: nil,
        # The registration status of the TCR campaign.
        tcr_campaign_registered: nil,
        # Message body (i.e., content) as a non-empty string.
        #
        # **Required for SMS**
        text: nil,
        to: nil,
        # The type of message. This value can be either 'sms' or 'mms'.
        type: nil,
        # Not used for inbound messages.
        valid_until: nil,
        # The failover URL where webhooks related to this message will be sent if sending
        # to the primary URL fails.
        webhook_failover_url: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cc: T::Array[Telnyx::MessagingInboundMessagePayload::Cc],
            completed_at: T.nilable(Time),
            cost: T.nilable(Telnyx::MessagingInboundMessagePayload::Cost),
            cost_breakdown:
              T.nilable(Telnyx::MessagingInboundMessagePayload::CostBreakdown),
            direction:
              Telnyx::MessagingInboundMessagePayload::Direction::TaggedSymbol,
            encoding: String,
            errors: T::Array[Telnyx::MessagingError0b38e7044b],
            from: Telnyx::MessagingInboundMessagePayload::From,
            media: T::Array[Telnyx::MessagingInboundMessagePayload::Media],
            messaging_profile_id: String,
            num_chars: Integer,
            organization_id: String,
            parts: Integer,
            received_at: Time,
            record_type:
              Telnyx::MessagingInboundMessagePayload::RecordType::TaggedSymbol,
            sent_at: T.nilable(Time),
            subject: T.nilable(String),
            tags: T::Array[String],
            tcr_campaign_billable: T::Boolean,
            tcr_campaign_id: T.nilable(String),
            tcr_campaign_registered: T.nilable(String),
            text: String,
            to: T::Array[Telnyx::MessagingInboundMessagePayload::To],
            type: Telnyx::MessagingInboundMessagePayload::Type::TaggedSymbol,
            valid_until: T.nilable(Time),
            webhook_failover_url: T.nilable(String),
            webhook_url: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Cc < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingInboundMessagePayload::Cc,
              Telnyx::Internal::AnyHash
            )
          end

        # The carrier of the receiver.
        sig { returns(T.nilable(String)) }
        attr_reader :carrier

        sig { params(carrier: String).void }
        attr_writer :carrier

        # The line-type of the receiver.
        sig do
          returns(
            T.nilable(
              Telnyx::MessagingInboundMessagePayload::Cc::LineType::TaggedSymbol
            )
          )
        end
        attr_reader :line_type

        sig do
          params(
            line_type:
              Telnyx::MessagingInboundMessagePayload::Cc::LineType::OrSymbol
          ).void
        end
        attr_writer :line_type

        # Receiving address (+E.164 formatted phone number or short code).
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig do
          returns(
            T.nilable(
              Telnyx::MessagingInboundMessagePayload::Cc::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::MessagingInboundMessagePayload::Cc::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            carrier: String,
            line_type:
              Telnyx::MessagingInboundMessagePayload::Cc::LineType::OrSymbol,
            phone_number: String,
            status: Telnyx::MessagingInboundMessagePayload::Cc::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The carrier of the receiver.
          carrier: nil,
          # The line-type of the receiver.
          line_type: nil,
          # Receiving address (+E.164 formatted phone number or short code).
          phone_number: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              carrier: String,
              line_type:
                Telnyx::MessagingInboundMessagePayload::Cc::LineType::TaggedSymbol,
              phone_number: String,
              status:
                Telnyx::MessagingInboundMessagePayload::Cc::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The line-type of the receiver.
        module LineType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MessagingInboundMessagePayload::Cc::LineType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WIRELINE =
            T.let(
              :Wireline,
              Telnyx::MessagingInboundMessagePayload::Cc::LineType::TaggedSymbol
            )
          WIRELESS =
            T.let(
              :Wireless,
              Telnyx::MessagingInboundMessagePayload::Cc::LineType::TaggedSymbol
            )
          VO_WI_FI =
            T.let(
              :VoWiFi,
              Telnyx::MessagingInboundMessagePayload::Cc::LineType::TaggedSymbol
            )
          VO_IP =
            T.let(
              :VoIP,
              Telnyx::MessagingInboundMessagePayload::Cc::LineType::TaggedSymbol
            )
          PRE_PAID_WIRELESS =
            T.let(
              :"Pre-Paid Wireless",
              Telnyx::MessagingInboundMessagePayload::Cc::LineType::TaggedSymbol
            )
          EMPTY =
            T.let(
              :"",
              Telnyx::MessagingInboundMessagePayload::Cc::LineType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingInboundMessagePayload::Cc::LineType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::MessagingInboundMessagePayload::Cc::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(
              :queued,
              Telnyx::MessagingInboundMessagePayload::Cc::Status::TaggedSymbol
            )
          SENDING =
            T.let(
              :sending,
              Telnyx::MessagingInboundMessagePayload::Cc::Status::TaggedSymbol
            )
          SENT =
            T.let(
              :sent,
              Telnyx::MessagingInboundMessagePayload::Cc::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Telnyx::MessagingInboundMessagePayload::Cc::Status::TaggedSymbol
            )
          SENDING_FAILED =
            T.let(
              :sending_failed,
              Telnyx::MessagingInboundMessagePayload::Cc::Status::TaggedSymbol
            )
          DELIVERY_FAILED =
            T.let(
              :delivery_failed,
              Telnyx::MessagingInboundMessagePayload::Cc::Status::TaggedSymbol
            )
          DELIVERY_UNCONFIRMED =
            T.let(
              :delivery_unconfirmed,
              Telnyx::MessagingInboundMessagePayload::Cc::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingInboundMessagePayload::Cc::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Cost < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingInboundMessagePayload::Cost,
              Telnyx::Internal::AnyHash
            )
          end

        # The amount deducted from your account.
        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        # The ISO 4217 currency identifier.
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        sig do
          params(amount: String, currency: String).returns(T.attached_class)
        end
        def self.new(
          # The amount deducted from your account.
          amount: nil,
          # The ISO 4217 currency identifier.
          currency: nil
        )
        end

        sig { override.returns({ amount: String, currency: String }) }
        def to_hash
        end
      end

      class CostBreakdown < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingInboundMessagePayload::CostBreakdown,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::MessagingInboundMessagePayload::CostBreakdown::CarrierFee
            )
          )
        end
        attr_reader :carrier_fee

        sig do
          params(
            carrier_fee:
              Telnyx::MessagingInboundMessagePayload::CostBreakdown::CarrierFee::OrHash
          ).void
        end
        attr_writer :carrier_fee

        sig do
          returns(
            T.nilable(
              Telnyx::MessagingInboundMessagePayload::CostBreakdown::Rate
            )
          )
        end
        attr_reader :rate

        sig do
          params(
            rate:
              Telnyx::MessagingInboundMessagePayload::CostBreakdown::Rate::OrHash
          ).void
        end
        attr_writer :rate

        # Detailed breakdown of the message cost components.
        sig do
          params(
            carrier_fee:
              Telnyx::MessagingInboundMessagePayload::CostBreakdown::CarrierFee::OrHash,
            rate:
              Telnyx::MessagingInboundMessagePayload::CostBreakdown::Rate::OrHash
          ).returns(T.attached_class)
        end
        def self.new(carrier_fee: nil, rate: nil)
        end

        sig do
          override.returns(
            {
              carrier_fee:
                Telnyx::MessagingInboundMessagePayload::CostBreakdown::CarrierFee,
              rate: Telnyx::MessagingInboundMessagePayload::CostBreakdown::Rate
            }
          )
        end
        def to_hash
        end

        class CarrierFee < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingInboundMessagePayload::CostBreakdown::CarrierFee,
                Telnyx::Internal::AnyHash
              )
            end

          # The carrier fee amount.
          sig { returns(T.nilable(String)) }
          attr_reader :amount

          sig { params(amount: String).void }
          attr_writer :amount

          # The ISO 4217 currency identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          sig do
            params(amount: String, currency: String).returns(T.attached_class)
          end
          def self.new(
            # The carrier fee amount.
            amount: nil,
            # The ISO 4217 currency identifier.
            currency: nil
          )
          end

          sig { override.returns({ amount: String, currency: String }) }
          def to_hash
          end
        end

        class Rate < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingInboundMessagePayload::CostBreakdown::Rate,
                Telnyx::Internal::AnyHash
              )
            end

          # The rate amount applied.
          sig { returns(T.nilable(String)) }
          attr_reader :amount

          sig { params(amount: String).void }
          attr_writer :amount

          # The ISO 4217 currency identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          sig do
            params(amount: String, currency: String).returns(T.attached_class)
          end
          def self.new(
            # The rate amount applied.
            amount: nil,
            # The ISO 4217 currency identifier.
            currency: nil
          )
          end

          sig { override.returns({ amount: String, currency: String }) }
          def to_hash
          end
        end
      end

      # The direction of the message. Inbound messages are sent to you whereas outbound
      # messages are sent from you.
      module Direction
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MessagingInboundMessagePayload::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INBOUND =
          T.let(
            :inbound,
            Telnyx::MessagingInboundMessagePayload::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::MessagingInboundMessagePayload::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class From < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingInboundMessagePayload::From,
              Telnyx::Internal::AnyHash
            )
          end

        # The carrier of the sender.
        sig { returns(T.nilable(String)) }
        attr_reader :carrier

        sig { params(carrier: String).void }
        attr_writer :carrier

        # The line-type of the sender.
        sig do
          returns(
            T.nilable(
              Telnyx::MessagingInboundMessagePayload::From::LineType::TaggedSymbol
            )
          )
        end
        attr_reader :line_type

        sig do
          params(
            line_type:
              Telnyx::MessagingInboundMessagePayload::From::LineType::OrSymbol
          ).void
        end
        attr_writer :line_type

        # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        # code).
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig do
          returns(
            T.nilable(
              Telnyx::MessagingInboundMessagePayload::From::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::MessagingInboundMessagePayload::From::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            carrier: String,
            line_type:
              Telnyx::MessagingInboundMessagePayload::From::LineType::OrSymbol,
            phone_number: String,
            status:
              Telnyx::MessagingInboundMessagePayload::From::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The carrier of the sender.
          carrier: nil,
          # The line-type of the sender.
          line_type: nil,
          # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
          # code).
          phone_number: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              carrier: String,
              line_type:
                Telnyx::MessagingInboundMessagePayload::From::LineType::TaggedSymbol,
              phone_number: String,
              status:
                Telnyx::MessagingInboundMessagePayload::From::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The line-type of the sender.
        module LineType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MessagingInboundMessagePayload::From::LineType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WIRELINE =
            T.let(
              :Wireline,
              Telnyx::MessagingInboundMessagePayload::From::LineType::TaggedSymbol
            )
          WIRELESS =
            T.let(
              :Wireless,
              Telnyx::MessagingInboundMessagePayload::From::LineType::TaggedSymbol
            )
          VO_WI_FI =
            T.let(
              :VoWiFi,
              Telnyx::MessagingInboundMessagePayload::From::LineType::TaggedSymbol
            )
          VO_IP =
            T.let(
              :VoIP,
              Telnyx::MessagingInboundMessagePayload::From::LineType::TaggedSymbol
            )
          PRE_PAID_WIRELESS =
            T.let(
              :"Pre-Paid Wireless",
              Telnyx::MessagingInboundMessagePayload::From::LineType::TaggedSymbol
            )
          EMPTY =
            T.let(
              :"",
              Telnyx::MessagingInboundMessagePayload::From::LineType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingInboundMessagePayload::From::LineType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MessagingInboundMessagePayload::From::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RECEIVED =
            T.let(
              :received,
              Telnyx::MessagingInboundMessagePayload::From::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Telnyx::MessagingInboundMessagePayload::From::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingInboundMessagePayload::From::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Media < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingInboundMessagePayload::Media,
              Telnyx::Internal::AnyHash
            )
          end

        # The MIME type of the requested media.
        sig { returns(T.nilable(String)) }
        attr_reader :content_type

        sig { params(content_type: String).void }
        attr_writer :content_type

        # The SHA256 hash of the requested media.
        sig { returns(T.nilable(String)) }
        attr_reader :hash_sha256

        sig { params(hash_sha256: String).void }
        attr_writer :hash_sha256

        # The size of the requested media.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # The url of the media requested to be sent.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            content_type: String,
            hash_sha256: String,
            size: Integer,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The MIME type of the requested media.
          content_type: nil,
          # The SHA256 hash of the requested media.
          hash_sha256: nil,
          # The size of the requested media.
          size: nil,
          # The url of the media requested to be sent.
          url: nil
        )
        end

        sig do
          override.returns(
            {
              content_type: String,
              hash_sha256: String,
              size: Integer,
              url: String
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
            T.all(Symbol, Telnyx::MessagingInboundMessagePayload::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSAGE =
          T.let(
            :message,
            Telnyx::MessagingInboundMessagePayload::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::MessagingInboundMessagePayload::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class To < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingInboundMessagePayload::To,
              Telnyx::Internal::AnyHash
            )
          end

        # The carrier of the receiver.
        sig { returns(T.nilable(String)) }
        attr_reader :carrier

        sig { params(carrier: String).void }
        attr_writer :carrier

        # The line-type of the receiver.
        sig do
          returns(
            T.nilable(
              Telnyx::MessagingInboundMessagePayload::To::LineType::TaggedSymbol
            )
          )
        end
        attr_reader :line_type

        sig do
          params(
            line_type:
              Telnyx::MessagingInboundMessagePayload::To::LineType::OrSymbol
          ).void
        end
        attr_writer :line_type

        # Receiving address (+E.164 formatted phone number or short code).
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig do
          returns(
            T.nilable(
              Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::MessagingInboundMessagePayload::To::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            carrier: String,
            line_type:
              Telnyx::MessagingInboundMessagePayload::To::LineType::OrSymbol,
            phone_number: String,
            status: Telnyx::MessagingInboundMessagePayload::To::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The carrier of the receiver.
          carrier: nil,
          # The line-type of the receiver.
          line_type: nil,
          # Receiving address (+E.164 formatted phone number or short code).
          phone_number: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              carrier: String,
              line_type:
                Telnyx::MessagingInboundMessagePayload::To::LineType::TaggedSymbol,
              phone_number: String,
              status:
                Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The line-type of the receiver.
        module LineType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MessagingInboundMessagePayload::To::LineType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WIRELINE =
            T.let(
              :Wireline,
              Telnyx::MessagingInboundMessagePayload::To::LineType::TaggedSymbol
            )
          WIRELESS =
            T.let(
              :Wireless,
              Telnyx::MessagingInboundMessagePayload::To::LineType::TaggedSymbol
            )
          VO_WI_FI =
            T.let(
              :VoWiFi,
              Telnyx::MessagingInboundMessagePayload::To::LineType::TaggedSymbol
            )
          VO_IP =
            T.let(
              :VoIP,
              Telnyx::MessagingInboundMessagePayload::To::LineType::TaggedSymbol
            )
          PRE_PAID_WIRELESS =
            T.let(
              :"Pre-Paid Wireless",
              Telnyx::MessagingInboundMessagePayload::To::LineType::TaggedSymbol
            )
          EMPTY =
            T.let(
              :"",
              Telnyx::MessagingInboundMessagePayload::To::LineType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingInboundMessagePayload::To::LineType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::MessagingInboundMessagePayload::To::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(
              :queued,
              Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
            )
          SENDING =
            T.let(
              :sending,
              Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
            )
          SENT =
            T.let(
              :sent,
              Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
            )
          SENDING_FAILED =
            T.let(
              :sending_failed,
              Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
            )
          DELIVERY_FAILED =
            T.let(
              :delivery_failed,
              Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
            )
          DELIVERY_UNCONFIRMED =
            T.let(
              :delivery_unconfirmed,
              Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
            )
          WEBHOOK_DELIVERED =
            T.let(
              :webhook_delivered,
              Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingInboundMessagePayload::To::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The type of message. This value can be either 'sms' or 'mms'.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MessagingInboundMessagePayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(
            :SMS,
            Telnyx::MessagingInboundMessagePayload::Type::TaggedSymbol
          )
        MMS =
          T.let(
            :MMS,
            Telnyx::MessagingInboundMessagePayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::MessagingInboundMessagePayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
