# typed: strong

module Telnyx
  module Models
    class MessageCancelScheduledResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessageCancelScheduledResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::MessageCancelScheduledResponse::Cc]
          )
        )
      end
      attr_reader :cc

      sig do
        params(
          cc:
            T::Array[Telnyx::Models::MessageCancelScheduledResponse::Cc::OrHash]
        ).void
      end
      attr_writer :cc

      # ISO 8601 formatted date indicating when the message was finalized.
      sig { returns(T.nilable(Time)) }
      attr_accessor :completed_at

      sig do
        returns(T.nilable(Telnyx::Models::MessageCancelScheduledResponse::Cost))
      end
      attr_reader :cost

      sig do
        params(
          cost:
            T.nilable(
              Telnyx::Models::MessageCancelScheduledResponse::Cost::OrHash
            )
        ).void
      end
      attr_writer :cost

      # Detailed breakdown of the message cost components.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown
          )
        )
      end
      attr_reader :cost_breakdown

      sig do
        params(
          cost_breakdown:
            T.nilable(
              Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::OrHash
            )
        ).void
      end
      attr_writer :cost_breakdown

      # The direction of the message. Inbound messages are sent to you whereas outbound
      # messages are sent from you.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::MessageCancelScheduledResponse::Direction::TaggedSymbol
          )
        )
      end
      attr_reader :direction

      sig do
        params(
          direction:
            Telnyx::Models::MessageCancelScheduledResponse::Direction::OrSymbol
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
      sig { returns(T.nilable(T::Array[Telnyx::MessagingError])) }
      attr_reader :errors

      sig { params(errors: T::Array[Telnyx::MessagingError::OrHash]).void }
      attr_writer :errors

      sig do
        returns(T.nilable(Telnyx::Models::MessageCancelScheduledResponse::From))
      end
      attr_reader :from

      sig do
        params(
          from: Telnyx::Models::MessageCancelScheduledResponse::From::OrHash
        ).void
      end
      attr_writer :from

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::MessageCancelScheduledResponse::Media]
          )
        )
      end
      attr_reader :media

      sig do
        params(
          media:
            T::Array[
              Telnyx::Models::MessageCancelScheduledResponse::Media::OrHash
            ]
        ).void
      end
      attr_writer :media

      # Unique identifier for a messaging profile.
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      # The id of the organization the messaging profile belongs to.
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
            Telnyx::Models::MessageCancelScheduledResponse::RecordType::TaggedSymbol
          )
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type:
            Telnyx::Models::MessageCancelScheduledResponse::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      # ISO 8601 formatted date indicating when the message was sent.
      sig { returns(T.nilable(Time)) }
      attr_accessor :sent_at

      # Indicates whether smart encoding was applied to this message. When `true`, one
      # or more Unicode characters were automatically replaced with GSM-7 equivalents to
      # reduce segment count and cost. The original message text is preserved in
      # webhooks.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :smart_encoding_applied

      sig { params(smart_encoding_applied: T::Boolean).void }
      attr_writer :smart_encoding_applied

      # Subject of multimedia message
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
        returns(
          T.nilable(
            T::Array[Telnyx::Models::MessageCancelScheduledResponse::To]
          )
        )
      end
      attr_reader :to

      sig do
        params(
          to:
            T::Array[Telnyx::Models::MessageCancelScheduledResponse::To::OrHash]
        ).void
      end
      attr_writer :to

      # The type of message.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::MessageCancelScheduledResponse::Type::TaggedSymbol
          )
        )
      end
      attr_reader :type

      sig do
        params(
          type: Telnyx::Models::MessageCancelScheduledResponse::Type::OrSymbol
        ).void
      end
      attr_writer :type

      # Message must be out of the queue by this time or else it will be discarded and
      # marked as 'sending_failed'. Once the message moves out of the queue, this field
      # will be nulled
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
          cc:
            T::Array[
              Telnyx::Models::MessageCancelScheduledResponse::Cc::OrHash
            ],
          completed_at: T.nilable(Time),
          cost:
            T.nilable(
              Telnyx::Models::MessageCancelScheduledResponse::Cost::OrHash
            ),
          cost_breakdown:
            T.nilable(
              Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::OrHash
            ),
          direction:
            Telnyx::Models::MessageCancelScheduledResponse::Direction::OrSymbol,
          encoding: String,
          errors: T::Array[Telnyx::MessagingError::OrHash],
          from: Telnyx::Models::MessageCancelScheduledResponse::From::OrHash,
          media:
            T::Array[
              Telnyx::Models::MessageCancelScheduledResponse::Media::OrHash
            ],
          messaging_profile_id: String,
          organization_id: String,
          parts: Integer,
          received_at: Time,
          record_type:
            Telnyx::Models::MessageCancelScheduledResponse::RecordType::OrSymbol,
          sent_at: T.nilable(Time),
          smart_encoding_applied: T::Boolean,
          subject: T.nilable(String),
          tags: T::Array[String],
          tcr_campaign_billable: T::Boolean,
          tcr_campaign_id: T.nilable(String),
          tcr_campaign_registered: T.nilable(String),
          text: String,
          to:
            T::Array[
              Telnyx::Models::MessageCancelScheduledResponse::To::OrHash
            ],
          type: Telnyx::Models::MessageCancelScheduledResponse::Type::OrSymbol,
          valid_until: T.nilable(Time),
          webhook_failover_url: T.nilable(String),
          webhook_url: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        cc: nil,
        # ISO 8601 formatted date indicating when the message was finalized.
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
        # The id of the organization the messaging profile belongs to.
        organization_id: nil,
        # Number of parts into which the message's body must be split.
        parts: nil,
        # ISO 8601 formatted date indicating when the message request was received.
        received_at: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # ISO 8601 formatted date indicating when the message was sent.
        sent_at: nil,
        # Indicates whether smart encoding was applied to this message. When `true`, one
        # or more Unicode characters were automatically replaced with GSM-7 equivalents to
        # reduce segment count and cost. The original message text is preserved in
        # webhooks.
        smart_encoding_applied: nil,
        # Subject of multimedia message
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
        # The type of message.
        type: nil,
        # Message must be out of the queue by this time or else it will be discarded and
        # marked as 'sending_failed'. Once the message moves out of the queue, this field
        # will be nulled
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
            cc: T::Array[Telnyx::Models::MessageCancelScheduledResponse::Cc],
            completed_at: T.nilable(Time),
            cost:
              T.nilable(Telnyx::Models::MessageCancelScheduledResponse::Cost),
            cost_breakdown:
              T.nilable(
                Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown
              ),
            direction:
              Telnyx::Models::MessageCancelScheduledResponse::Direction::TaggedSymbol,
            encoding: String,
            errors: T::Array[Telnyx::MessagingError],
            from: Telnyx::Models::MessageCancelScheduledResponse::From,
            media:
              T::Array[Telnyx::Models::MessageCancelScheduledResponse::Media],
            messaging_profile_id: String,
            organization_id: String,
            parts: Integer,
            received_at: Time,
            record_type:
              Telnyx::Models::MessageCancelScheduledResponse::RecordType::TaggedSymbol,
            sent_at: T.nilable(Time),
            smart_encoding_applied: T::Boolean,
            subject: T.nilable(String),
            tags: T::Array[String],
            tcr_campaign_billable: T::Boolean,
            tcr_campaign_id: T.nilable(String),
            tcr_campaign_registered: T.nilable(String),
            text: String,
            to: T::Array[Telnyx::Models::MessageCancelScheduledResponse::To],
            type:
              Telnyx::Models::MessageCancelScheduledResponse::Type::TaggedSymbol,
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
              Telnyx::Models::MessageCancelScheduledResponse::Cc,
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
              Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::TaggedSymbol
            )
          )
        end
        attr_reader :line_type

        sig do
          params(
            line_type:
              Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::OrSymbol
          ).void
        end
        attr_writer :line_type

        # Receiving address (+E.164 formatted phone number or short code).
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # The delivery status of the message.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            carrier: String,
            line_type:
              Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::OrSymbol,
            phone_number: String,
            status:
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The carrier of the receiver.
          carrier: nil,
          # The line-type of the receiver.
          line_type: nil,
          # Receiving address (+E.164 formatted phone number or short code).
          phone_number: nil,
          # The delivery status of the message.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              carrier: String,
              line_type:
                Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::TaggedSymbol,
              phone_number: String,
              status:
                Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
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
                Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WIRELINE =
            T.let(
              :Wireline,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::TaggedSymbol
            )
          WIRELESS =
            T.let(
              :Wireless,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::TaggedSymbol
            )
          VO_WI_FI =
            T.let(
              :VoWiFi,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::TaggedSymbol
            )
          VO_IP =
            T.let(
              :VoIP,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::TaggedSymbol
            )
          PRE_PAID_WIRELESS =
            T.let(
              :"Pre-Paid Wireless",
              Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::TaggedSymbol
            )
          EMPTY =
            T.let(
              :"",
              Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The delivery status of the message.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MessageCancelScheduledResponse::Cc::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SCHEDULED =
            T.let(
              :scheduled,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )
          QUEUED =
            T.let(
              :queued,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )
          SENDING =
            T.let(
              :sending,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )
          SENT =
            T.let(
              :sent,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )
          SENDING_FAILED =
            T.let(
              :sending_failed,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )
          DELIVERY_UNCONFIRMED =
            T.let(
              :delivery_unconfirmed,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )
          DELIVERY_FAILED =
            T.let(
              :delivery_failed,
              Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MessageCancelScheduledResponse::Cc::Status::TaggedSymbol
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
              Telnyx::Models::MessageCancelScheduledResponse::Cost,
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
              Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::CarrierFee
            )
          )
        end
        attr_reader :carrier_fee

        sig do
          params(
            carrier_fee:
              Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::CarrierFee::OrHash
          ).void
        end
        attr_writer :carrier_fee

        sig do
          returns(
            T.nilable(
              Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::Rate
            )
          )
        end
        attr_reader :rate

        sig do
          params(
            rate:
              Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::Rate::OrHash
          ).void
        end
        attr_writer :rate

        # Detailed breakdown of the message cost components.
        sig do
          params(
            carrier_fee:
              Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::CarrierFee::OrHash,
            rate:
              Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::Rate::OrHash
          ).returns(T.attached_class)
        end
        def self.new(carrier_fee: nil, rate: nil)
        end

        sig do
          override.returns(
            {
              carrier_fee:
                Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::CarrierFee,
              rate:
                Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::Rate
            }
          )
        end
        def to_hash
        end

        class CarrierFee < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::CarrierFee,
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
                Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::Rate,
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
            T.all(
              Symbol,
              Telnyx::Models::MessageCancelScheduledResponse::Direction
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OUTBOUND =
          T.let(
            :outbound,
            Telnyx::Models::MessageCancelScheduledResponse::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::MessageCancelScheduledResponse::Direction::TaggedSymbol
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
              Telnyx::Models::MessageCancelScheduledResponse::From,
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
              Telnyx::Models::MessageCancelScheduledResponse::From::LineType::TaggedSymbol
            )
          )
        end
        attr_reader :line_type

        sig do
          params(
            line_type:
              Telnyx::Models::MessageCancelScheduledResponse::From::LineType::OrSymbol
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
          params(
            carrier: String,
            line_type:
              Telnyx::Models::MessageCancelScheduledResponse::From::LineType::OrSymbol,
            phone_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The carrier of the receiver.
          carrier: nil,
          # The line-type of the receiver.
          line_type: nil,
          # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
          # code).
          phone_number: nil
        )
        end

        sig do
          override.returns(
            {
              carrier: String,
              line_type:
                Telnyx::Models::MessageCancelScheduledResponse::From::LineType::TaggedSymbol,
              phone_number: String
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
                Telnyx::Models::MessageCancelScheduledResponse::From::LineType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WIRELINE =
            T.let(
              :Wireline,
              Telnyx::Models::MessageCancelScheduledResponse::From::LineType::TaggedSymbol
            )
          WIRELESS =
            T.let(
              :Wireless,
              Telnyx::Models::MessageCancelScheduledResponse::From::LineType::TaggedSymbol
            )
          VO_WI_FI =
            T.let(
              :VoWiFi,
              Telnyx::Models::MessageCancelScheduledResponse::From::LineType::TaggedSymbol
            )
          VO_IP =
            T.let(
              :VoIP,
              Telnyx::Models::MessageCancelScheduledResponse::From::LineType::TaggedSymbol
            )
          PRE_PAID_WIRELESS =
            T.let(
              :"Pre-Paid Wireless",
              Telnyx::Models::MessageCancelScheduledResponse::From::LineType::TaggedSymbol
            )
          EMPTY =
            T.let(
              :"",
              Telnyx::Models::MessageCancelScheduledResponse::From::LineType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MessageCancelScheduledResponse::From::LineType::TaggedSymbol
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
              Telnyx::Models::MessageCancelScheduledResponse::Media,
              Telnyx::Internal::AnyHash
            )
          end

        # The MIME type of the requested media.
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The SHA256 hash of the requested media.
        sig { returns(T.nilable(String)) }
        attr_accessor :sha256

        # The size of the requested media.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :size

        # The url of the media requested to be sent.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            content_type: T.nilable(String),
            sha256: T.nilable(String),
            size: T.nilable(Integer),
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The MIME type of the requested media.
          content_type: nil,
          # The SHA256 hash of the requested media.
          sha256: nil,
          # The size of the requested media.
          size: nil,
          # The url of the media requested to be sent.
          url: nil
        )
        end

        sig do
          override.returns(
            {
              content_type: T.nilable(String),
              sha256: T.nilable(String),
              size: T.nilable(Integer),
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
            T.all(
              Symbol,
              Telnyx::Models::MessageCancelScheduledResponse::RecordType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSAGE =
          T.let(
            :message,
            Telnyx::Models::MessageCancelScheduledResponse::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::MessageCancelScheduledResponse::RecordType::TaggedSymbol
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
              Telnyx::Models::MessageCancelScheduledResponse::To,
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
              Telnyx::Models::MessageCancelScheduledResponse::To::LineType::TaggedSymbol
            )
          )
        end
        attr_reader :line_type

        sig do
          params(
            line_type:
              Telnyx::Models::MessageCancelScheduledResponse::To::LineType::OrSymbol
          ).void
        end
        attr_writer :line_type

        # Receiving address (+E.164 formatted phone number or short code).
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # The delivery status of the message.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            carrier: String,
            line_type:
              Telnyx::Models::MessageCancelScheduledResponse::To::LineType::OrSymbol,
            phone_number: String,
            status:
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The carrier of the receiver.
          carrier: nil,
          # The line-type of the receiver.
          line_type: nil,
          # Receiving address (+E.164 formatted phone number or short code).
          phone_number: nil,
          # The delivery status of the message.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              carrier: String,
              line_type:
                Telnyx::Models::MessageCancelScheduledResponse::To::LineType::TaggedSymbol,
              phone_number: String,
              status:
                Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
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
                Telnyx::Models::MessageCancelScheduledResponse::To::LineType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WIRELINE =
            T.let(
              :Wireline,
              Telnyx::Models::MessageCancelScheduledResponse::To::LineType::TaggedSymbol
            )
          WIRELESS =
            T.let(
              :Wireless,
              Telnyx::Models::MessageCancelScheduledResponse::To::LineType::TaggedSymbol
            )
          VO_WI_FI =
            T.let(
              :VoWiFi,
              Telnyx::Models::MessageCancelScheduledResponse::To::LineType::TaggedSymbol
            )
          VO_IP =
            T.let(
              :VoIP,
              Telnyx::Models::MessageCancelScheduledResponse::To::LineType::TaggedSymbol
            )
          PRE_PAID_WIRELESS =
            T.let(
              :"Pre-Paid Wireless",
              Telnyx::Models::MessageCancelScheduledResponse::To::LineType::TaggedSymbol
            )
          EMPTY =
            T.let(
              :"",
              Telnyx::Models::MessageCancelScheduledResponse::To::LineType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MessageCancelScheduledResponse::To::LineType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The delivery status of the message.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MessageCancelScheduledResponse::To::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SCHEDULED =
            T.let(
              :scheduled,
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )
          QUEUED =
            T.let(
              :queued,
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )
          SENDING =
            T.let(
              :sending,
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )
          SENT =
            T.let(
              :sent,
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )
          SENDING_FAILED =
            T.let(
              :sending_failed,
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )
          DELIVERY_UNCONFIRMED =
            T.let(
              :delivery_unconfirmed,
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )
          DELIVERY_FAILED =
            T.let(
              :delivery_failed,
              Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MessageCancelScheduledResponse::To::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The type of message.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Models::MessageCancelScheduledResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(
            :SMS,
            Telnyx::Models::MessageCancelScheduledResponse::Type::TaggedSymbol
          )
        MMS =
          T.let(
            :MMS,
            Telnyx::Models::MessageCancelScheduledResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::MessageCancelScheduledResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
