

import Foundation
public extension PlatformClient {
    /*
         Model: AbandonedCart
         Used By: Cart
     */

    class AbandonedCart: Codable {
        public var uid: Int

        public var checkoutMode: String?

        public var mergeQty: Bool?

        public var isDefault: Bool

        public var lastModified: String

        public var isArchive: Bool?

        public var pickUpCustomerDetails: [String: Any]?

        public var expireAt: String

        public var paymentMethods: [[String: Any]]?

        public var createdOn: String

        public var promotion: [String: Any]?

        public var gstin: String?

        public var shipments: [[String: Any]]?

        public var coupon: [String: Any]?

        public var deliveryCharges: [String: Any]?

        public var cartValue: Double?

        public var id: String

        public var fcIndexMap: [Int]?

        public var appId: String?

        public var codCharges: [String: Any]?

        public var isActive: Bool?

        public var discount: Double?

        public var userId: String

        public var paymentMode: String?

        public var bulkCouponDiscount: Double?

        public var payments: [String: Any]?

        public var orderId: String?

        public var comment: String?

        public var meta: [String: Any]?

        public var buyNow: Bool?

        public var fyndCredits: [String: Any]?

        public var cashback: [String: Any]

        public var articles: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case uid

            case checkoutMode = "checkout_mode"

            case mergeQty = "merge_qty"

            case isDefault = "is_default"

            case lastModified = "last_modified"

            case isArchive = "is_archive"

            case pickUpCustomerDetails = "pick_up_customer_details"

            case expireAt = "expire_at"

            case paymentMethods = "payment_methods"

            case createdOn = "created_on"

            case promotion

            case gstin

            case shipments

            case coupon

            case deliveryCharges = "delivery_charges"

            case cartValue = "cart_value"

            case id = "_id"

            case fcIndexMap = "fc_index_map"

            case appId = "app_id"

            case codCharges = "cod_charges"

            case isActive = "is_active"

            case discount

            case userId = "user_id"

            case paymentMode = "payment_mode"

            case bulkCouponDiscount = "bulk_coupon_discount"

            case payments

            case orderId = "order_id"

            case comment

            case meta

            case buyNow = "buy_now"

            case fyndCredits = "fynd_credits"

            case cashback

            case articles
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            self.uid = uid

            self.checkoutMode = checkoutMode

            self.mergeQty = mergeQty

            self.isDefault = isDefault

            self.lastModified = lastModified

            self.isArchive = isArchive

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.expireAt = expireAt

            self.paymentMethods = paymentMethods

            self.createdOn = createdOn

            self.promotion = promotion

            self.gstin = gstin

            self.shipments = shipments

            self.coupon = coupon

            self.deliveryCharges = deliveryCharges

            self.cartValue = cartValue

            self.id = id

            self.fcIndexMap = fcIndexMap

            self.appId = appId

            self.codCharges = codCharges

            self.isActive = isActive

            self.discount = discount

            self.userId = userId

            self.paymentMode = paymentMode

            self.bulkCouponDiscount = bulkCouponDiscount

            self.payments = payments

            self.orderId = orderId

            self.comment = comment

            self.meta = meta

            self.buyNow = buyNow

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            lastModified = try container.decode(String.self, forKey: .lastModified)

            do {
                isArchive = try container.decode(Bool.self, forKey: .isArchive)

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

            expireAt = try container.decode(String.self, forKey: .expireAt)

            do {
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                promotion = try container.decode([String: Any].self, forKey: .promotion)

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

            do {
                shipments = try container.decode([[String: Any]].self, forKey: .shipments)

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

            do {
                deliveryCharges = try container.decode([String: Any].self, forKey: .deliveryCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartValue = try container.decode(Double.self, forKey: .cartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                fcIndexMap = try container.decode([Int].self, forKey: .fcIndexMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

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

            userId = try container.decode(String.self, forKey: .userId)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkCouponDiscount = try container.decode(Double.self, forKey: .bulkCouponDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode([String: Any].self, forKey: .payments)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

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

            cashback = try container.decode([String: Any].self, forKey: .cashback)

            articles = try container.decode([[String: Any]].self, forKey: .articles)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encode(mergeQty, forKey: .mergeQty)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(isArchive, forKey: .isArchive)

            try? container.encode(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(promotion, forKey: .promotion)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(paymentMode, forKey: .paymentMode)

            try? container.encode(bulkCouponDiscount, forKey: .bulkCouponDiscount)

            try? container.encode(payments, forKey: .payments)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(comment, forKey: .comment)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}
