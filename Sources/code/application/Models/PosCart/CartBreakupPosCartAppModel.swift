

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: CartBreakup
        Used By: PosCart
    */
    class CartBreakup: Codable {
        
        public var loyaltyPoints: LoyaltyPoints?
        
        public var raw: RawBreakup?
        
        public var display: [DisplayBreakup]?
        
        public var coupon: CouponBreakup?
        

        public enum CodingKeys: String, CodingKey {
            
            case loyaltyPoints = "loyalty_points"
            
            case raw = "raw"
            
            case display = "display"
            
            case coupon = "coupon"
            
        }

        public init(coupon: CouponBreakup? = nil, display: [DisplayBreakup]? = nil, loyaltyPoints: LoyaltyPoints? = nil, raw: RawBreakup? = nil) {
            
            self.loyaltyPoints = loyaltyPoints
            
            self.raw = raw
            
            self.display = display
            
            self.coupon = coupon
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
            
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
                display = try container.decode([DisplayBreakup].self, forKey: .display)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            
            
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
        }
        
    }
}
