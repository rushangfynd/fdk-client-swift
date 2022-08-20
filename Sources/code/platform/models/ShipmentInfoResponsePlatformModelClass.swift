

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var pickedDate: String

        public var shipmentQuantity: Int

        public var totalItems: Int?

        public var kiranaStoreId: String?

        public var isNotFyndSource: Bool

        public var payButton: String?

        public var invoice: [String: Any]

        public var paymentMode: String

        public var priorityText: String?

        public var affiliateShipmentId: String

        public var billingDetails: UserDetailsData?

        public var forwardOrderStatus: [[String: Any]]?

        public var company: [String: Any]

        public var items: [[String: Any]]

        public var enableDpTracking: String

        public var fulfillingStore: FulfillingStore?

        public var packagingType: String

        public var coupon: [String: Any]?

        public var escalation: [String: Any]?

        public var userInfo: [String: Any]?

        public var isPdsr: String?

        public var gstDetails: GST?

        public var deliveryDetails: UserDetailsData?

        public var isPackagingOrder: Bool

        public var dueDate: String?

        public var trackingList: [TrackingList]?

        public var refundText: String?

        public var beneficiaryDetails: Bool?

        public var enableTracking: Bool?

        public var creditNoteId: String

        public var forwardTrackingList: [[String: Any]]?

        public var orderStatus: [String: Any]

        public var currentShipmentStatus: [String: Any]

        public var isInvoiced: Bool

        public var mid: String?

        public var canCancel: Bool?

        public var order: OrderDetailsData?

        public var platformLogo: Bool

        public var orderCreatedTime: String?

        public var refundDetails: [String: Any]?

        public var replacementDetails: String?

        public var bankData: [String: Any]?

        public var securedDeliveryFlag: String?

        public var bags: OrderBags?

        public var status: ShipmentStatusData?

        public var emailId: String

        public var orderingStore: [String: Any]

        public var deliveryStatus: [[String: Any]]

        public var isFyndStore: String?

        public var dpDetails: DPDetails?

        public var forwardShipmentStatus: [[String: Any]]?

        public var fyndstoreEmp: [String: Any]

        public var payments: ShipmentPayments?

        public var goGreen: Bool?

        public var userId: String

        public var deliverySlot: [String: Any]

        public var vertical: String?

        public var userAgent: String

        public var prices: Prices?

        public var isFyndCoupon: Bool

        public var lockStatus: String

        public var orderType: String

        public var journeyType: String

        public var childNodes: [String]?

        public var canReturn: Bool?

        public var statusProgress: Int

        public var bagStatusHistory: [BagStatusHistory]?

        public var shipmentId: String

        public var canBreak: String

        public var trackingUrl: String

        public enum CodingKeys: String, CodingKey {
            case pickedDate = "picked_date"

            case shipmentQuantity = "shipment_quantity"

            case totalItems = "total_items"

            case kiranaStoreId = "kirana_store_id"

            case isNotFyndSource = "is_not_fynd_source"

            case payButton = "pay_button"

            case invoice

            case paymentMode = "payment_mode"

            case priorityText = "priority_text"

            case affiliateShipmentId = "affiliate_shipment_id"

            case billingDetails = "billing_details"

            case forwardOrderStatus = "forward_order_status"

            case company

            case items

            case enableDpTracking = "enable_dp_tracking"

            case fulfillingStore = "fulfilling_store"

            case packagingType = "packaging_type"

            case coupon

            case escalation

            case userInfo = "user_info"

            case isPdsr = "is_pdsr"

            case gstDetails = "gst_details"

            case deliveryDetails = "delivery_details"

            case isPackagingOrder = "is_packaging_order"

            case dueDate = "due_date"

            case trackingList = "tracking_list"

            case refundText = "refund_text"

            case beneficiaryDetails = "beneficiary_details"

            case enableTracking = "enable_tracking"

            case creditNoteId = "credit_note_id"

            case forwardTrackingList = "forward_tracking_list"

            case orderStatus = "order_status"

            case currentShipmentStatus = "current_shipment_status"

            case isInvoiced = "is_invoiced"

            case mid

            case canCancel = "can_cancel"

            case order

            case platformLogo = "platform_logo"

            case orderCreatedTime = "order_created_time"

            case refundDetails = "refund_details"

            case replacementDetails = "replacement_details"

            case bankData = "bank_data"

            case securedDeliveryFlag = "secured_delivery_flag"

            case bags

            case status

            case emailId = "email_id"

            case orderingStore = "ordering_store"

            case deliveryStatus = "delivery_status"

            case isFyndStore = "is_fynd_store"

            case dpDetails = "dp_details"

            case forwardShipmentStatus = "forward_shipment_status"

            case fyndstoreEmp = "fyndstore_emp"

            case payments

            case goGreen = "go_green"

            case userId = "user_id"

            case deliverySlot = "delivery_slot"

            case vertical

            case userAgent = "user_agent"

            case prices

            case isFyndCoupon = "is_fynd_coupon"

            case lockStatus = "lock_status"

            case orderType = "order_type"

            case journeyType = "journey_type"

            case childNodes = "child_nodes"

            case canReturn = "can_return"

            case statusProgress = "status_progress"

            case bagStatusHistory = "bag_status_history"

            case shipmentId = "shipment_id"

            case canBreak = "can_break"

            case trackingUrl = "tracking_url"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.pickedDate = pickedDate

            self.shipmentQuantity = shipmentQuantity

            self.totalItems = totalItems

            self.kiranaStoreId = kiranaStoreId

            self.isNotFyndSource = isNotFyndSource

            self.payButton = payButton

            self.invoice = invoice

            self.paymentMode = paymentMode

            self.priorityText = priorityText

            self.affiliateShipmentId = affiliateShipmentId

            self.billingDetails = billingDetails

            self.forwardOrderStatus = forwardOrderStatus

            self.company = company

            self.items = items

            self.enableDpTracking = enableDpTracking

            self.fulfillingStore = fulfillingStore

            self.packagingType = packagingType

            self.coupon = coupon

            self.escalation = escalation

            self.userInfo = userInfo

            self.isPdsr = isPdsr

            self.gstDetails = gstDetails

            self.deliveryDetails = deliveryDetails

            self.isPackagingOrder = isPackagingOrder

            self.dueDate = dueDate

            self.trackingList = trackingList

            self.refundText = refundText

            self.beneficiaryDetails = beneficiaryDetails

            self.enableTracking = enableTracking

            self.creditNoteId = creditNoteId

            self.forwardTrackingList = forwardTrackingList

            self.orderStatus = orderStatus

            self.currentShipmentStatus = currentShipmentStatus

            self.isInvoiced = isInvoiced

            self.mid = mid

            self.canCancel = canCancel

            self.order = order

            self.platformLogo = platformLogo

            self.orderCreatedTime = orderCreatedTime

            self.refundDetails = refundDetails

            self.replacementDetails = replacementDetails

            self.bankData = bankData

            self.securedDeliveryFlag = securedDeliveryFlag

            self.bags = bags

            self.status = status

            self.emailId = emailId

            self.orderingStore = orderingStore

            self.deliveryStatus = deliveryStatus

            self.isFyndStore = isFyndStore

            self.dpDetails = dpDetails

            self.forwardShipmentStatus = forwardShipmentStatus

            self.fyndstoreEmp = fyndstoreEmp

            self.payments = payments

            self.goGreen = goGreen

            self.userId = userId

            self.deliverySlot = deliverySlot

            self.vertical = vertical

            self.userAgent = userAgent

            self.prices = prices

            self.isFyndCoupon = isFyndCoupon

            self.lockStatus = lockStatus

            self.orderType = orderType

            self.journeyType = journeyType

            self.childNodes = childNodes

            self.canReturn = canReturn

            self.statusProgress = statusProgress

            self.bagStatusHistory = bagStatusHistory

            self.shipmentId = shipmentId

            self.canBreak = canBreak

            self.trackingUrl = trackingUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            items = try container.decode([[String: Any]].self, forKey: .items)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailId = try container.decode(String.self, forKey: .emailId)

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            orderType = try container.decode(String.self, forKey: .orderType)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
        }
    }
}