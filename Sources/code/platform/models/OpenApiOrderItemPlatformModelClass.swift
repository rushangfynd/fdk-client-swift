

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var files: [OpenApiFiles]?

        public var productId: Int

        public var priceMarked: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var discount: Double

        public var meta: CartItemMeta?

        public var quantity: Int?

        public var amountPaid: Double

        public var codCharges: Double

        public var priceEffective: Double

        public var size: String

        public var couponEffectiveDiscount: Double

        public var extraMeta: [String: Any]?

        public var loyaltyDiscount: Double?

        public var deliveryCharges: Double

        public var employeeDiscount: Double?

        public var cashbackApplied: Double

        public enum CodingKeys: String, CodingKey {
            case files

            case productId = "product_id"

            case priceMarked = "price_marked"

            case paymentMethods = "payment_methods"

            case discount

            case meta

            case quantity

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case size

            case couponEffectiveDiscount = "coupon_effective_discount"

            case extraMeta = "extra_meta"

            case loyaltyDiscount = "loyalty_discount"

            case deliveryCharges = "delivery_charges"

            case employeeDiscount = "employee_discount"

            case cashbackApplied = "cashback_applied"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.files = files

            self.productId = productId

            self.priceMarked = priceMarked

            self.paymentMethods = paymentMethods

            self.discount = discount

            self.meta = meta

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.size = size

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.extraMeta = extraMeta

            self.loyaltyDiscount = loyaltyDiscount

            self.deliveryCharges = deliveryCharges

            self.employeeDiscount = employeeDiscount

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productId = try container.decode(Int.self, forKey: .productId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            size = try container.decode(String.self, forKey: .size)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
