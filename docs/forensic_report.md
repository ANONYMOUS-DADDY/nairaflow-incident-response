# 🔍 Forensic Investigation & Incident Timeline

## 1. Executive Summary of the Breach
On June 16, 2026, at 03:14 AM WAT, an attacker leveraged a compromised developer workstation via phishing to extract long-lived AWS IAM credentials (`nairaflow-dev-staging`). The attacker used these credentials to pivot from the Staging VPC into the Production VPC, aiming at a database containing masked customer PII.

## 2. Evidence Tracking & Chain of Custody
To preserve volatile memory and comply with forensic readiness standards, **no instances were rebooted**. 

| Evidence ID | Description | Source System | SHA-256 Hash | Handled By |
| :--- | :--- | :--- | :--- | :--- |
| **EVID-001** | EBS Snapshot of EKS Node | `vol-0123456789abcdef0` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` | J. C. Lawrence |
| **EVID-002** | CloudTrail Export (JSON) | AWS CloudTrail | `4a8a08f09d37b73795649038408b5f33a94a1151125206263300a7b45a278914` | J. C. Lawrence |

## 3. Incident Timeline (NIST Detection Phase)
* **03:14:22 AM** - Attacker uses compromised IAM keys to invoke `AssumeRole` tracking toward `NairaFlow-Prod-RDS-FullAccess` from a Staging VPC IP (`10.0.45.12`).
* **03:22:00 AM** - SOC alerts triggered on anomalous cross-VPC API calls.
* **03:30:00 AM** - IR Team activates. Technical communications instantly migrated **out-of-band** to a pre-configured, secure **Signal** channel.
* **04:10:00 AM** - Forensic snapshot of EKS node captured live to preserve runtime state.
* **06:56:00 AM** - Containment policy fully active. Attacker access severed. Core payment gateway uptime maintained at **99.94%**.