

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: GlobalSchemaV2
         Used By: Theme
     */
    class GlobalSchemaV2: Codable {
        public var props: [PropV2]?

        public enum CodingKeys: String, CodingKey {
            case props
        }

        public init(props: [PropV2]? = nil) {
            self.props = props
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                props = try container.decode([PropV2].self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(props, forKey: .props)
        }
    }
}