contract;

abi ExampleContract {
    // Declaring a public function to get the stored value
    fn get_value() -> u64;
}

storage {
    // Simple storage with one field, initialized to 42
    value: u64 = 42,
}

impl ExampleContract for Contract {
    // Implementing the ABI function
    fn get_value() -> u64 {
        // Returning the stored value
        storage.value
    }
}
