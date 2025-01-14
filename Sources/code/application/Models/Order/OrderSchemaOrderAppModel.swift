

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: OrderSchema
        Used By: Order
    */
    class OrderSchema: Codable {
        
        public var totalShipmentsInOrder: Int?
        
        public var userInfo: UserInfo?
        
        public var breakupValues: [BreakupValues]?
        
        public var orderCreatedTime: String?
        
        public var orderId: String?
        
        public var shipments: [Shipments]?
        
        public var bagsForReorder: [BagsForReorder]?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalShipmentsInOrder = "total_shipments_in_order"
            
            case userInfo = "user_info"
            
            case breakupValues = "breakup_values"
            
            case orderCreatedTime = "order_created_time"
            
            case orderId = "order_id"
            
            case shipments = "shipments"
            
            case bagsForReorder = "bags_for_reorder"
            
        }

        public init(bagsForReorder: [BagsForReorder]? = nil, breakupValues: [BreakupValues]? = nil, orderCreatedTime: String? = nil, orderId: String? = nil, shipments: [Shipments]? = nil, totalShipmentsInOrder: Int? = nil, userInfo: UserInfo? = nil) {
            
            self.totalShipmentsInOrder = totalShipmentsInOrder
            
            self.userInfo = userInfo
            
            self.breakupValues = breakupValues
            
            self.orderCreatedTime = orderCreatedTime
            
            self.orderId = orderId
            
            self.shipments = shipments
            
            self.bagsForReorder = bagsForReorder
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userInfo = try container.decode(UserInfo.self, forKey: .userInfo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                breakupValues = try container.decode([BreakupValues].self, forKey: .breakupValues)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderId = try container.decode(String.self, forKey: .orderId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipments = try container.decode([Shipments].self, forKey: .shipments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bagsForReorder = try container.decode([BagsForReorder].self, forKey: .bagsForReorder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
            
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(bagsForReorder, forKey: .bagsForReorder)
            
            
        }
        
    }
}
