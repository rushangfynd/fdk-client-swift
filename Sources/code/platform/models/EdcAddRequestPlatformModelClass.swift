

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var edcModel: String

        public var aggregatorId: Int

        public var deviceTag: String?

        public var storeId: Int

        public var terminalSerialNo: String

        public var edcDeviceSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case edcModel = "edc_model"

            case aggregatorId = "aggregator_id"

            case deviceTag = "device_tag"

            case storeId = "store_id"

            case terminalSerialNo = "terminal_serial_no"

            case edcDeviceSerialNo = "edc_device_serial_no"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.edcModel = edcModel

            self.aggregatorId = aggregatorId

            self.deviceTag = deviceTag

            self.storeId = storeId

            self.terminalSerialNo = terminalSerialNo

            self.edcDeviceSerialNo = edcDeviceSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edcModel = try container.decode(String.self, forKey: .edcModel)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)
        }
    }
}
