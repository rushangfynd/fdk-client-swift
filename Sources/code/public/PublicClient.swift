
import Foundation

public class PublicClient {

    public let configuration: Configuration

    public let inventory: Inventory

    public let partner: Partner

    public let webhook: Webhook

    public init(config: PublicConfig) {
        
        configuration = Configuration(config: config)
        
        inventory = Inventory(config: config)
        
        partner = Partner(config: config)
        
        webhook = Webhook(config: config)
        
    }
}