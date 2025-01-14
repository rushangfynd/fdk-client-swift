

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartBreakup
        Used By: Cart
    */
    class CartBreakup: Codable {
        
        public var display: [DisplayBreakup]?
        
        public var raw: RawBreakup?
        
        public var coupon: CouponBreakup?
        
        public var loyaltyPoints: LoyaltyPoints?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case raw = "raw"
            
            case coupon = "coupon"
            
            case loyaltyPoints = "loyalty_points"
            
        }

        public init(coupon: CouponBreakup? = nil, display: [DisplayBreakup]? = nil, loyaltyPoints: LoyaltyPoints? = nil, raw: RawBreakup? = nil) {
            
            self.display = display
            
            self.raw = raw
            
            self.coupon = coupon
            
            self.loyaltyPoints = loyaltyPoints
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                display = try container.decode([DisplayBreakup].self, forKey: .display)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                raw = try container.decode(RawBreakup.self, forKey: .raw)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                coupon = try container.decode(CouponBreakup.self, forKey: .coupon)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            
        }
        
    }
}
