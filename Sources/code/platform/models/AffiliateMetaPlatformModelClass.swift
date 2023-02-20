

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateMeta
         Used By: Order
     */

    class AffiliateMeta: Codable {
        public var isPriority: Bool?

        public var quantity: Int?

        public var orderItemId: String?

        public var couponCode: String?

        public var boxType: String?

        public var channelOrderId: String?

        public var loyaltyDiscount: Double?

        public var dueDate: String?

        public var employeeDiscount: Double?

        public var channelShipmentId: String?

        public var sizeLevelTotalQty: Int?

        public enum CodingKeys: String, CodingKey {
            case isPriority = "is_priority"

            case quantity

            case orderItemId = "order_item_id"

            case couponCode = "coupon_code"

            case boxType = "box_type"

            case channelOrderId = "channel_order_id"

            case loyaltyDiscount = "loyalty_discount"

            case dueDate = "due_date"

            case employeeDiscount = "employee_discount"

            case channelShipmentId = "channel_shipment_id"

            case sizeLevelTotalQty = "size_level_total_qty"
        }

        public init(boxType: String? = nil, channelOrderId: String? = nil, channelShipmentId: String? = nil, couponCode: String? = nil, dueDate: String? = nil, employeeDiscount: Double? = nil, isPriority: Bool? = nil, loyaltyDiscount: Double? = nil, orderItemId: String? = nil, quantity: Int? = nil, sizeLevelTotalQty: Int? = nil) {
            self.isPriority = isPriority

            self.quantity = quantity

            self.orderItemId = orderItemId

            self.couponCode = couponCode

            self.boxType = boxType

            self.channelOrderId = channelOrderId

            self.loyaltyDiscount = loyaltyDiscount

            self.dueDate = dueDate

            self.employeeDiscount = employeeDiscount

            self.channelShipmentId = channelShipmentId

            self.sizeLevelTotalQty = sizeLevelTotalQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isPriority = try container.decode(Bool.self, forKey: .isPriority)

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
                orderItemId = try container.decode(String.self, forKey: .orderItemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponCode = try container.decode(String.self, forKey: .couponCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelOrderId = try container.decode(String.self, forKey: .channelOrderId)

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

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

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

            do {
                channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeLevelTotalQty = try container.decode(Int.self, forKey: .sizeLevelTotalQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPriority, forKey: .isPriority)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(orderItemId, forKey: .orderItemId)

            try? container.encode(couponCode, forKey: .couponCode)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encode(channelOrderId, forKey: .channelOrderId)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encode(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encode(channelShipmentId, forKey: .channelShipmentId)

            try? container.encode(sizeLevelTotalQty, forKey: .sizeLevelTotalQty)
        }
    }
}
