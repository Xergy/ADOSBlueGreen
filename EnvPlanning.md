# Env Planning




- Blue Green Envs
  - Shared Infra
    - Network
      - Vnet101
        - Virtual Network Address Space 10.0.0.0        
        - Subnet101
            - 10.10.10.0
            - Subnet Mask 10.255.255.255     
    - Active Directory
      - DC101
        - 10.10.10.11
        - Host DNS
    - Certificate Server
      - CA101 "Certificate Authority"
        - 10.10.10.15
  - PAAS SQL
    - Blue Azure Paas SQL
    - Green Azure Pass SQL
  - Azure DevOps
    - Blue
      - Front Ends "FEs"
        - Adofeblu101
        - Adofeblu102
      - Search
        - AdoSrhblu101
    - Green
      - Front Ends "FEs"
        - Adofegrn101
        - Adofegrn102
      - Search
        - AdoSrhGrn101
  - General Server
    - Blue
      - SrvBlu101
    - Green
      - SrvGrn101
    
