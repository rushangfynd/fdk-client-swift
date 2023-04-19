

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: AbandonedCart
         Used By: Cart
     */

    class AbandonedCart: Codable {
        public var bulkCouponDiscount: Double?

        public var deliveryCharges: [String: Any]?

        public var userId: String

        public var appId: String?

        public var meta: [String: Any]?

        public var cashback: [String: Any]

        public var id: String

        public var isDefault: Bool

        public var comment: String?

        public var orderId: String?

        public var mergeQty: Bool?

        public var checkoutMode: String?

        public var uid: Int

        public var cartValue: Double?

        public var codCharges: [String: Any]?

        public var buyNow: Bool?

        public var paymentMode: String?

        public var expireAt: String

        public var isActive: Bool?

        public var discount: Double?

        public var pickUpCustomerDetails: [String: Any]?

        public var paymentMethods: [[String: Any]]?

        public var fyndCredits: [String: Any]?

        public var gstin: String?

        public var createdOn: String

        public var fcIndexMap: [Int]?

        public var coupon: [String: Any]?

        public var lastModified: String

        public var articles: [[String: Any]]

        public var payments: [String: Any]?

        public var isArchive: Bool?

        public var shipments: [[String: Any]]?

        public var promotion: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case bulkCouponDiscount = "bulk_coupon_discount"

            case deliveryCharges = "delivery_charges"

            case userId = "user_id"

            case appId = "app_id"

            case meta

            case cashback

            case id = "_id"

            case isDefault = "is_default"

            case comment

            case orderId = "order_id"

            case mergeQty = "merge_qty"

            case checkoutMode = "checkout_mode"

            case uid

            case cartValue = "cart_value"

            case codCharges = "cod_charges"

            case buyNow = "buy_now"

            case paymentMode = "payment_mode"

            case expireAt = "expire_at"

            case isActive = "is_active"

            case discount

            case pickUpCustomerDetails = "pick_up_customer_details"

            case paymentMethods = "payment_methods"

            case fyndCredits = "fynd_credits"

            case gstin

            case createdOn = "created_on"

            case fcIndexMap = "fc_index_map"

            case coupon

            case lastModified = "last_modified"

            case articles

            case payments

            case isArchive = "is_archive"

            case shipments

            case promotion
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            self.bulkCouponDiscount = bulkCouponDiscount

            self.deliveryCharges = deliveryCharges

            self.userId = userId

            self.appId = appId

            self.meta = meta

            self.cashback = cashback

            self.id = id

            self.isDefault = isDefault

            self.comment = comment

            self.orderId = orderId

            self.mergeQty = mergeQty

            self.checkoutMode = checkoutMode

            self.uid = uid

            self.cartValue = cartValue

            self.codCharges = codCharges

            self.buyNow = buyNow

            self.paymentMode = paymentMode

            self.expireAt = expireAt

            self.isActive = isActive

            self.discount = discount

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.paymentMethods = paymentMethods

            self.fyndCredits = fyndCredits

            self.gstin = gstin

            self.createdOn = createdOn

            self.fcIndexMap = fcIndexMap

            self.coupon = coupon

            self.lastModified = lastModified

            self.articles = articles

            self.payments = payments

            self.isArchive = isArchive

            self.shipments = shipments

            self.promotion = promotion
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bulkCouponDiscount = try container.decode(Double.self, forKey: .bulkCouponDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharges = try container.decode([String: Any].self, forKey: .deliveryCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                appId = try container.decode(String.self, forKey: .appId)

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

            cashback = try container.decode([String: Any].self, forKey: .cashback)

            id = try container.decode(String.self, forKey: .id)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mergeQty = try container.decode(Bool.self, forKey: .mergeQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                cartValue = try container.decode(Double.self, forKey: .cartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode([String: Any].self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            expireAt = try container.decode(String.self, forKey: .expireAt)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCredits = try container.decode([String: Any].self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                fcIndexMap = try container.decode([Int].self, forKey: .fcIndexMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastModified = try container.decode(String.self, forKey: .lastModified)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            do {
                payments = try container.decode([String: Any].self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isArchive = try container.decode(Bool.self, forKey: .isArchive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([[String: Any]].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotion = try container.decode([String: Any].self, forKey: .promotion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(bulkCouponDiscount, forKey: .bulkCouponDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(mergeQty, forKey: .mergeQty)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encode(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encode(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encode(payments, forKey: .payments)

            try? container.encodeIfPresent(isArchive, forKey: .isArchive)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(promotion, forKey: .promotion)
        }
    }
}
