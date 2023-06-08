

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateMeta
         Used By: Order
     */

    class AffiliateMeta: Codable {
        public var orderItemId: String?

        public var dueDate: String?

        public var loyaltyDiscount: Double?

        public var quantity: Int?

        public var replacementDetails: ReplacementDetails

        public var sizeLevelTotalQty: Int?

        public var channelShipmentId: String?

        public var marketplaceInvoiceId: String?

        public var isPriority: Bool?

        public var boxType: String?

        public var channelOrderId: String?

        public var employeeDiscount: Double?

        public var couponCode: String?

        public enum CodingKeys: String, CodingKey {
            case orderItemId = "order_item_id"

            case dueDate = "due_date"

            case loyaltyDiscount = "loyalty_discount"

            case quantity

            case replacementDetails = "replacement_details"

            case sizeLevelTotalQty = "size_level_total_qty"

            case channelShipmentId = "channel_shipment_id"

            case marketplaceInvoiceId = "marketplace_invoice_id"

            case isPriority = "is_priority"

            case boxType = "box_type"

            case channelOrderId = "channel_order_id"

            case employeeDiscount = "employee_discount"

            case couponCode = "coupon_code"
        }

        public init(boxType: String? = nil, channelOrderId: String? = nil, channelShipmentId: String? = nil, couponCode: String? = nil, dueDate: String? = nil, employeeDiscount: Double? = nil, isPriority: Bool? = nil, loyaltyDiscount: Double? = nil, marketplaceInvoiceId: String? = nil, orderItemId: String? = nil, quantity: Int? = nil, replacementDetails: ReplacementDetails, sizeLevelTotalQty: Int? = nil) {
            self.orderItemId = orderItemId

            self.dueDate = dueDate

            self.loyaltyDiscount = loyaltyDiscount

            self.quantity = quantity

            self.replacementDetails = replacementDetails

            self.sizeLevelTotalQty = sizeLevelTotalQty

            self.channelShipmentId = channelShipmentId

            self.marketplaceInvoiceId = marketplaceInvoiceId

            self.isPriority = isPriority

            self.boxType = boxType

            self.channelOrderId = channelOrderId

            self.employeeDiscount = employeeDiscount

            self.couponCode = couponCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderItemId = try container.decode(String.self, forKey: .orderItemId)

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
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

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

            replacementDetails = try container.decode(ReplacementDetails.self, forKey: .replacementDetails)

            do {
                sizeLevelTotalQty = try container.decode(Int.self, forKey: .sizeLevelTotalQty)

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
                marketplaceInvoiceId = try container.decode(String.self, forKey: .marketplaceInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPriority = try container.decode(Bool.self, forKey: .isPriority)

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
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderItemId, forKey: .orderItemId)

            try? container.encode(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encode(sizeLevelTotalQty, forKey: .sizeLevelTotalQty)

            try? container.encode(channelShipmentId, forKey: .channelShipmentId)

            try? container.encode(marketplaceInvoiceId, forKey: .marketplaceInvoiceId)

            try? container.encodeIfPresent(isPriority, forKey: .isPriority)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encode(channelOrderId, forKey: .channelOrderId)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encode(couponCode, forKey: .couponCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateMeta
         Used By: Order
     */

    class AffiliateMeta: Codable {
        public var orderItemId: String?

        public var dueDate: String?

        public var loyaltyDiscount: Double?

        public var quantity: Int?

        public var replacementDetails: ReplacementDetails

        public var sizeLevelTotalQty: Int?

        public var channelShipmentId: String?

        public var marketplaceInvoiceId: String?

        public var isPriority: Bool?

        public var boxType: String?

        public var channelOrderId: String?

        public var employeeDiscount: Double?

        public var couponCode: String?

        public enum CodingKeys: String, CodingKey {
            case orderItemId = "order_item_id"

            case dueDate = "due_date"

            case loyaltyDiscount = "loyalty_discount"

            case quantity

            case replacementDetails = "replacement_details"

            case sizeLevelTotalQty = "size_level_total_qty"

            case channelShipmentId = "channel_shipment_id"

            case marketplaceInvoiceId = "marketplace_invoice_id"

            case isPriority = "is_priority"

            case boxType = "box_type"

            case channelOrderId = "channel_order_id"

            case employeeDiscount = "employee_discount"

            case couponCode = "coupon_code"
        }

        public init(boxType: String? = nil, channelOrderId: String? = nil, channelShipmentId: String? = nil, couponCode: String? = nil, dueDate: String? = nil, employeeDiscount: Double? = nil, isPriority: Bool? = nil, loyaltyDiscount: Double? = nil, marketplaceInvoiceId: String? = nil, orderItemId: String? = nil, quantity: Int? = nil, replacementDetails: ReplacementDetails, sizeLevelTotalQty: Int? = nil) {
            self.orderItemId = orderItemId

            self.dueDate = dueDate

            self.loyaltyDiscount = loyaltyDiscount

            self.quantity = quantity

            self.replacementDetails = replacementDetails

            self.sizeLevelTotalQty = sizeLevelTotalQty

            self.channelShipmentId = channelShipmentId

            self.marketplaceInvoiceId = marketplaceInvoiceId

            self.isPriority = isPriority

            self.boxType = boxType

            self.channelOrderId = channelOrderId

            self.employeeDiscount = employeeDiscount

            self.couponCode = couponCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderItemId = try container.decode(String.self, forKey: .orderItemId)

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
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

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

            replacementDetails = try container.decode(ReplacementDetails.self, forKey: .replacementDetails)

            do {
                sizeLevelTotalQty = try container.decode(Int.self, forKey: .sizeLevelTotalQty)

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
                marketplaceInvoiceId = try container.decode(String.self, forKey: .marketplaceInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPriority = try container.decode(Bool.self, forKey: .isPriority)

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
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderItemId, forKey: .orderItemId)

            try? container.encode(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encode(sizeLevelTotalQty, forKey: .sizeLevelTotalQty)

            try? container.encode(channelShipmentId, forKey: .channelShipmentId)

            try? container.encode(marketplaceInvoiceId, forKey: .marketplaceInvoiceId)

            try? container.encodeIfPresent(isPriority, forKey: .isPriority)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encode(channelOrderId, forKey: .channelOrderId)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encode(couponCode, forKey: .couponCode)
        }
    }
}
