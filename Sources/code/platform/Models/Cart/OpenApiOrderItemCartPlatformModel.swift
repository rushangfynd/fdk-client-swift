

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var meta: CartItemMeta?

        public var employeeDiscount: Double?

        public var amountPaid: Double

        public var codCharges: Double

        public var priceMarked: Double

        public var files: [OpenApiFiles]?

        public var priceEffective: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var extraMeta: [String: Any]?

        public var discount: Double

        public var cashbackApplied: Double

        public var quantity: Int?

        public var couponEffectiveDiscount: Double

        public var size: String

        public var productId: Int

        public var loyaltyDiscount: Double?

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case meta

            case employeeDiscount = "employee_discount"

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case files

            case priceEffective = "price_effective"

            case paymentMethods = "payment_methods"

            case extraMeta = "extra_meta"

            case discount

            case cashbackApplied = "cashback_applied"

            case quantity

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size

            case productId = "product_id"

            case loyaltyDiscount = "loyalty_discount"

            case deliveryCharges = "delivery_charges"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.meta = meta

            self.employeeDiscount = employeeDiscount

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.files = files

            self.priceEffective = priceEffective

            self.paymentMethods = paymentMethods

            self.extraMeta = extraMeta

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.quantity = quantity

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size

            self.productId = productId

            self.loyaltyDiscount = loyaltyDiscount

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            productId = try container.decode(Int.self, forKey: .productId)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
        }
    }
}
