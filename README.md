# ens_domens
 DNS Domain Registrar Contract

This is a contract for an ENS domain registrar. The task was to write the logic that allows binding any string value to its address.

In the contract, there is a function that maps a string to a structure. This structure contains information about the address, the creation time, and the price the user paid for the registration. Accordingly, the function must be payable and deduct funds for registering an ENS domain.

There should also be a function that takes a string (ENS domain) and returns the address. And a function to withdraw funds from the contract