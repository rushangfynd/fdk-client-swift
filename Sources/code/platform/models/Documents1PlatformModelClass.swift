

import Foundation
public extension PlatformClient {
    /*
         Model: Documents1
         Used By: Order
     */

    class Documents1: Codable {
        public var pan: Document

        public var gst: Document

        public var cin: Document?

        public var digitalSignature: Document?

        public enum CodingKeys: String, CodingKey {
            case pan

            case gst

            case cin

            case digitalSignature = "digital_signature"
        }

        public init(cin: Document? = nil, digitalSignature: Document? = nil, gst: Document, pan: Document) {
            self.pan = pan

            self.gst = gst

            self.cin = cin

            self.digitalSignature = digitalSignature
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pan = try container.decode(Document.self, forKey: .pan)

            gst = try container.decode(Document.self, forKey: .gst)

            do {
                cin = try container.decode(Document.self, forKey: .cin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                digitalSignature = try container.decode(Document.self, forKey: .digitalSignature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pan, forKey: .pan)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(cin, forKey: .cin)

            try? container.encodeIfPresent(digitalSignature, forKey: .digitalSignature)
        }
    }
}