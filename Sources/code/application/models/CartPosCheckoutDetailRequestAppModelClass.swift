

import Foundation
public extension ApplicationClient {
    /*
         Model: CartPosCheckoutDetailRequest
         Used By: PosCart
     */
    class CartPosCheckoutDetailRequest: Codable {
        public var paymentMode: String

        public var extraMeta: [String: Any]?

        public var meta: [String: Any]?

        public var deliveryAddress: [String: Any]?

        public var paymentIdentifier: String?

        public var addressId: String?

        public var orderType: String

        public var paymentParams: [String: Any]?

        public var orderingStore: Int?

        public var billingAddress: [String: Any]?

        public var files: [Files]?

        public var merchantCode: String?

        public var callbackUrl: String?

        public var pickAtStoreUid: Int?

        public var aggregator: String?

        public var paymentAutoConfirm: Bool?

        public var billingAddressId: String?

        public var pos: Bool?

        public var staff: StaffCheckout?

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case extraMeta = "extra_meta"

            case meta

            case deliveryAddress = "delivery_address"

            case paymentIdentifier = "payment_identifier"

            case addressId = "address_id"

            case orderType = "order_type"

            case paymentParams = "payment_params"

            case orderingStore = "ordering_store"

            case billingAddress = "billing_address"

            case files

            case merchantCode = "merchant_code"

            case callbackUrl = "callback_url"

            case pickAtStoreUid = "pick_at_store_uid"

            case aggregator

            case paymentAutoConfirm = "payment_auto_confirm"

            case billingAddressId = "billing_address_id"

            case pos

            case staff
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil) {
            self.paymentMode = paymentMode

            self.extraMeta = extraMeta

            self.meta = meta

            self.deliveryAddress = deliveryAddress

            self.paymentIdentifier = paymentIdentifier

            self.addressId = addressId

            self.orderType = orderType

            self.paymentParams = paymentParams

            self.orderingStore = orderingStore

            self.billingAddress = billingAddress

            self.files = files

            self.merchantCode = merchantCode

            self.callbackUrl = callbackUrl

            self.pickAtStoreUid = pickAtStoreUid

            self.aggregator = aggregator

            self.paymentAutoConfirm = paymentAutoConfirm

            self.billingAddressId = billingAddressId

            self.pos = pos

            self.staff = staff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressId = try container.decode(String.self, forKey: .addressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode([Files].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pickAtStoreUid = try container.decode(Int.self, forKey: .pickAtStoreUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pos = try container.decode(Bool.self, forKey: .pos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staff = try container.decode(StaffCheckout.self, forKey: .staff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(staff, forKey: .staff)
        }
    }
}
