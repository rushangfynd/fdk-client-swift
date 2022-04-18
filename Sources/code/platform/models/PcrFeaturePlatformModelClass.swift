import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PcrFeature
         Used By: Configuration
     */

    class PcrFeature: Codable {
        public var staffSelection: Bool?

        public enum CodingKeys: String, CodingKey {
            case staffSelection = "staff_selection"
        }

        public init(staffSelection: Bool? = nil) {
            self.staffSelection = staffSelection
        }

        public func duplicate() -> PcrFeature {
            let dict = self.dictionary!
            let copy = PcrFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                staffSelection = try container.decode(Bool.self, forKey: .staffSelection)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(staffSelection, forKey: .staffSelection)
        }
    }
}