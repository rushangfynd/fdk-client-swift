

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: Product
         Used By: Order
     */
    class Product: Codable {
        public var appliedPromos: [AppliedPromos]?

        public var coupon: Coupon?

        public var sellerIdentifier: String?

        public var canReturn: Bool?

        public var parentPromoBags: [String: Any]?

        public var bagStatus: ProductStatus?

        public var returnableDate: String?

        public var quantity: Int?

        public var item: Item?

        public var deliveryDate: String?

        public var lineNumber: Int?

        public var canCancel: Bool?

        public var brand: ProductBrand?

        public var payment: ShipmentPayment?

        public var orderId: String

        public var docketNumber: String

        public enum CodingKeys: String, CodingKey {
            case appliedPromos = "applied_promos"

            case coupon

            case sellerIdentifier = "seller_identifier"

            case canReturn = "can_return"

            case parentPromoBags = "parent_promo_bags"

            case bagStatus = "bag_status"

            case returnableDate = "returnable_date"

            case quantity

            case item

            case deliveryDate = "delivery_date"

            case lineNumber = "line_number"

            case canCancel = "can_cancel"

            case brand

            case payment

            case orderId = "order_id"

            case docketNumber = "docket_number"
        }

        public init(appliedPromos: [AppliedPromos]? = nil, bagStatus: ProductStatus? = nil, brand: ProductBrand? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, coupon: Coupon? = nil, deliveryDate: String? = nil, docketNumber: String, item: Item? = nil, lineNumber: Int? = nil, orderId: String, parentPromoBags: [String: Any]? = nil, payment: ShipmentPayment? = nil, quantity: Int? = nil, returnableDate: String? = nil, sellerIdentifier: String? = nil) {
            self.appliedPromos = appliedPromos

            self.coupon = coupon

            self.sellerIdentifier = sellerIdentifier

            self.canReturn = canReturn

            self.parentPromoBags = parentPromoBags

            self.bagStatus = bagStatus

            self.returnableDate = returnableDate

            self.quantity = quantity

            self.item = item

            self.deliveryDate = deliveryDate

            self.lineNumber = lineNumber

            self.canCancel = canCancel

            self.brand = brand

            self.payment = payment

            self.orderId = orderId

            self.docketNumber = docketNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appliedPromos = try container.decode([AppliedPromos].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(Coupon.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStatus = try container.decode(ProductStatus.self, forKey: .bagStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnableDate = try container.decode(String.self, forKey: .returnableDate)

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

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryDate = try container.decode(String.self, forKey: .deliveryDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(ShipmentPayment.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            docketNumber = try container.decode(String.self, forKey: .docketNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(returnableDate, forKey: .returnableDate)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(docketNumber, forKey: .docketNumber)
        }
    }
}
