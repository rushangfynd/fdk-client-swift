

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: GeoLocation
        Used By: PosCart
    */
    class GeoLocation: Codable {
        
        public var latitude: Double?
        
        public var longitude: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
        }

        public init(latitude: Double? = nil, longitude: Double? = nil) {
            
            self.latitude = latitude
            
            self.longitude = longitude
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                latitude = try container.decode(Double.self, forKey: .latitude)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                longitude = try container.decode(Double.self, forKey: .longitude)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
        }
        
    }
}
