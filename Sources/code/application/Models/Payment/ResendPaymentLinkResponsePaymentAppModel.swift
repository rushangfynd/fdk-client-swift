

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ResendPaymentLinkResponse
        Used By: Payment
    */
    class ResendPaymentLinkResponse: Codable {
        
        public var statusCode: Int
        
        public var pollingTimeout: Int?
        
        public var success: Bool
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case pollingTimeout = "polling_timeout"
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(message: String, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.pollingTimeout = pollingTimeout
            
            self.success = success
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            statusCode = try container.decode(Int.self, forKey: .statusCode)
            
            
            
            
            do {
                pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encode(pollingTimeout, forKey: .pollingTimeout)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
