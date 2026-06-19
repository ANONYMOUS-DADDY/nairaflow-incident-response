# 🛡️ Project NairaFlow: Incident Response & Digital Forensics Capstone

An enterprise-grade Incident Response and Forensic Investigation report detailing a multi-stage data breach at NairaFlow Technologies, handled in accordance with **NIST SP 800-61 Rev. 2** guidelines.

## 📊 Incident Response Metrics
| Metric | Target | Actual Achieved | Status |
| :--- | :--- | :--- | :--- |
| **Mean Time to Containment (MTTC)** | < 4 Hours | **3 Hours, 42 Minutes** | 🟢 Target Met |
| **Core Gateway Uptime** | > 99.9% | **99.94%** | 🟢 Target Met |
| **Volatile Memory Preservation** | 100% | **100% (No Hard Reboots)** | 🟢 Target Met |
| **Communication Integrity** | Out-of-Band | **100% Signal Deployment** | 🟢 Target Met |

## 🏗️ Repository Architecture
* `docs/incident_response_plan.md` - Standard Operating Procedures aligned with NIST.
* `docs/forensic_report.md` - Analysis of compromised IAM entities, timelines, and chains of custody.
* `docs/remediation_roadmap.md` - Short-term hardening and long-term architectural fixes (PCI-DSS v4.0).
* `playbooks/` - Automation scripts for containing credentials and capturing live forensics.
* `logs/` - Mock AWS CloudTrail indicators of compromise (IoCs).