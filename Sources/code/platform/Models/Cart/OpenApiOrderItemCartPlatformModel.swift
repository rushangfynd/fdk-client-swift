

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var priceEffective: Double

        public var productId: Int

        public var amountPaid: Double

        public var couponEffectiveDiscount: Double

        public var codCharges: Double

        public var size: String

        public var employeeDiscount: Double?

        public var priceMarked: Double

        public var deliveryCharges: Double

        public var meta: CartItemMeta?

        public var extraMeta: [String: Any]?

        public var cashbackApplied: Double

        public var discount: Double

        public var quantity: Int?

        public var files: [OpenApiFiles]?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var loyaltyDiscount: Double?

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case productId = "product_id"

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case size

            case employeeDiscount = "employee_discount"

            case priceMarked = "price_marked"

            case deliveryCharges = "delivery_charges"

            case meta

            case extraMeta = "extra_meta"

            case cashbackApplied = "cashback_applied"

            case discount

            case quantity

            case files

            case paymentMethods = "payment_methods"

            case loyaltyDiscount = "loyalty_discount"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.priceEffective = priceEffective

            self.productId = productId

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.size = size

            self.employeeDiscount = employeeDiscount

            self.priceMarked = priceMarked

            self.deliveryCharges = deliveryCharges

            self.meta = meta

            self.extraMeta = extraMeta

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.quantity = quantity

            self.files = files

            self.paymentMethods = paymentMethods

            self.loyaltyDiscount = loyaltyDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            productId = try container.decode(Int.self, forKey: .productId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
        }
    }
}
