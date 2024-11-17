module DonarRegistry::OrganDonorRegistry {
    use aptos_framework::signer;
    use aptos_framework::timestamp;
    
    /// Struct representing a donor's information
    struct DonorInfo has store, key {
        is_registered: bool,        // Whether person is registered as donor
        registration_time: u64,     // When they registered
        organ_types: vector<u8>,    // Types of organs willing to donate
                                   // (1: kidney, 2: liver, 3: heart, etc.)
    }
    
    /// Error codes
    const E_ALREADY_REGISTERED: u64 = 1;
    const E_NOT_REGISTERED: u64 = 2;
    
    /// Function to register as an organ donor
    public fun register_as_donor(
        account: &signer,
        organ_types: vector<u8>
    ) {
        let addr = signer::address_of(account);
        
        // Ensure account hasn't already registered
        assert!(!exists<DonorInfo>(addr), E_ALREADY_REGISTERED);
        
        // Create new donor registration
        let donor_info = DonorInfo {
            is_registered: true,
            registration_time: timestamp::now_seconds(),
            organ_types,
        };
        
        // Store the donor information
        move_to(account, donor_info);
    }
    
    /// Function to update donor status (e.g., opt-out or modify organs)
    public fun update_donor_status(
        account: &signer,
        is_registered: bool,
        organ_types: vector<u8>
    ) acquires DonorInfo {
        let addr = signer::address_of(account);
        
        // Ensure account is already registered
        assert!(exists<DonorInfo>(addr), E_NOT_REGISTERED);
        
        let donor_info = borrow_global_mut<DonorInfo>(addr);
        donor_info.is_registered = is_registered;
        donor_info.organ_types = organ_types;
    }
}