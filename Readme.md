# Blockchain-Based Organ Donor Registry

## Introduction
The Organ Donor Registry is a decentralized application (dApp) built on the Aptos blockchain that aims to revolutionize the way organ donation registration and management is handled. This smart contract provides a secure, transparent, and efficient way for individuals to register as organ donors and manage their donation preferences.

The project leverages blockchain technology to create an immutable record of donor registrations while maintaining privacy and giving donors complete control over their donation choices. The system uses a simple but effective encoding system for different organ types, making it easy to specify multiple donation preferences.

## Vision
Our vision is to create a global, decentralized organ donor registry that:
- Eliminates paperwork and reduces administrative overhead
- Provides instant verification of donor status
- Ensures data integrity and prevents unauthorized modifications
- Empowers donors to easily update their preferences
- Creates a transparent yet private system for organ donation management
- Bridges the gap between donors and healthcare systems
- Reduces the time needed to verify donor status in critical situations

## Future Goals
1. **Enhanced Feature Set**
   - Integration with healthcare provider systems
   - Multi-signature functionality for medical professional verification
   - Emergency contact information storage
   - Medical history integration
   - Geographic location mapping for efficient organ matching

2. **Technical Improvements**
   - Implementation of privacy-preserving zero-knowledge proofs
   - Cross-chain compatibility for wider accessibility
   - Advanced analytics for organ availability statistics
   - Smart matching algorithm for donor-recipient compatibility

3. **Ecosystem Development**
   - Mobile application for easy registration and management
   - Healthcare provider dashboard
   - Emergency services integration
   - Public awareness and education portal
   - Integration with existing healthcare databases

4. **Regulatory Compliance**
   - HIPAA compliance implementation
   - International healthcare standard certifications
   - Regional legal requirement adaptations
   - Data protection and privacy enhancements

## Deployment Information
- Network: Aptos Devnet
- Contract Address: `0xba828afbc2d535fdb4a014bc411a216e3c6597f6c910c2d186fdc8fee31b6328`
- Module Name: `OrganDonorRegistry`

## Current Features
1. **Donor Registration**
   - Register as an organ donor
   - Specify multiple organ types for donation
   - Automatic timestamp recording

2. **Status Management**
   - Update registration status
   - Modify organ donation preferences
   - Opt-out capability

## Organ Type Encoding
- 1: Kidney
- 2: Liver
- 3: Heart
- 4: Lungs
- 5: Pancreas
- 6: Intestines
- 7: Corneas

## Getting Started
To interact with the smart contract:
1. Connect to Aptos Devnet
2. Use the provided module address
3. Call `register_as_donor` function to register
4. Use `update_donor_status` to modify preferences

## Address of the Contract
Network: Aptos Devnet
Module Name: OrganDonorRegistry
Address: 0xba828afbc2d535fdb4a014bc411a216e3c6597f6c910c2d186fdc8fee31b6328


For developers looking to build upon this project, please ensure you have:
- Aptos CLI installed
- Move language knowledge
- Basic understanding of blockchain technology

## Contributing
We welcome contributions from the community. Please feel free to submit issues, feature requests, and pull requests to help improve this vital project.

---
