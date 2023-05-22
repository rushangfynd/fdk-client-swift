

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: AbandonedCart
         Used By: Cart
     */

    class AbandonedCart: Codable {
        public var bulkCouponDiscount: Double?

        public var discount: Double?

        public var userId: String

        public var paymentMode: String?

        public var isDefault: Bool

        public var meta: [String: Any]?

        public var isArchive: Bool?

        public var codCharges: [String: Any]?

        public var uid: Int

        public var orderId: String?

        public var comment: String?

        public var appId: String?

        public var cartValue: Double?

        public var createdOn: String

        public var payments: [String: Any]?

        public var deliveryCharges: [String: Any]?

        public var shipments: [[String: Any]]?

        public var cashback: [String: Any]

        public var id: String

        public var fcIndexMap: [Int]?

        public var coupon: [String: Any]?

        public var paymentMethods: [[String: Any]]?

        public var promotion: [String: Any]?

        public var articles: [[String: Any]]

        public var lastModified: String

        public var fyndCredits: [String: Any]?

        public var buyNow: Bool?

        public var expireAt: String

        public var gstin: String?

        public var isActive: Bool?

        public var mergeQty: Bool?

        public var pickUpCustomerDetails: [String: Any]?

        public var checkoutMode: String?

        public enum CodingKeys: String, CodingKey {
            case bulkCouponDiscount = "bulk_coupon_discount"

            case discount

            case userId = "user_id"

            case paymentMode = "payment_mode"

            case isDefault = "is_default"

            case meta

            case isArchive = "is_archive"

            case codCharges = "cod_charges"

            case uid

            case orderId = "order_id"

            case comment

            case appId = "app_id"

            case cartValue = "cart_value"

            case createdOn = "created_on"

            case payments

            case deliveryCharges = "delivery_charges"

            case shipments

            case cashback

            case id = "_id"

            case fcIndexMap = "fc_index_map"

            case coupon

            case paymentMethods = "payment_methods"

            case promotion

            case articles

            case lastModified = "last_modified"

            case fyndCredits = "fynd_credits"

            case buyNow = "buy_now"

            case expireAt = "expire_at"

            case gstin

            case isActive = "is_active"

            case mergeQty = "merge_qty"

            case pickUpCustomerDetails = "pick_up_customer_details"

            case checkoutMode = "checkout_mode"
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            self.bulkCouponDiscount = bulkCouponDiscount

            self.discount = discount

            self.userId = userId

            self.paymentMode = paymentMode

            self.isDefault = isDefault

            self.meta = meta

            self.isArchive = isArchive

            self.codCharges = codCharges

            self.uid = uid

            self.orderId = orderId

            self.comment = comment

            self.appId = appId

            self.cartValue = cartValue

            self.createdOn = createdOn

            self.payments = payments

            self.deliveryCharges = deliveryCharges

            self.shipments = shipments

            self.cashback = cashback

            self.id = id

            self.fcIndexMap = fcIndexMap

            self.coupon = coupon

            self.paymentMethods = paymentMethods

            self.promotion = promotion

            self.articles = articles

            self.lastModified = lastModified

            self.fyndCredits = fyndCredits

            self.buyNow = buyNow

            self.expireAt = expireAt

            self.gstin = gstin

            self.isActive = isActive

            self.mergeQty = mergeQty

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.checkoutMode = checkoutMode
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

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                codCharges = try container.decode([String: Any].self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(Int.self, forKey: .uid)

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
                appId = try container.decode(String.self, forKey: .appId)

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

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                payments = try container.decode([String: Any].self, forKey: .payments)

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
                shipments = try container.decode([[String: Any]].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode([String: Any].self, forKey: .cashback)

            id = try container.decode(String.self, forKey: .id)

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

            do {
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)

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

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            lastModified = try container.decode(String.self, forKey: .lastModified)

            do {
                fyndCredits = try container.decode([String: Any].self, forKey: .fyndCredits)

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

            expireAt = try container.decode(String.self, forKey: .expireAt)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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
                mergeQty = try container.decode(Bool.self, forKey: .mergeQty)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(bulkCouponDiscount, forKey: .bulkCouponDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(isArchive, forKey: .isArchive)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(payments, forKey: .payments)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(promotion, forKey: .promotion)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(mergeQty, forKey: .mergeQty)

            try? container.encode(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        }
    }
}
