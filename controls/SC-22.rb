control 'SC-22' do
  impact 0.5
  title 'Architecture and Provisioning for Name/Address Resolution Service'
  desc <<~DESC
    Ensure the systems that collectively provide name/address resolution service for an organization are fault-tolerant and implement internal and external role separation.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-22[01] the systems that collectively provide name/address resolution services for an organization are fault-tolerant;
      SC-22[02] the systems that collectively provide name/address resolution services for an organization implement internal role separation;
      SC-22[03] the systems that collectively provide name/address resolution services for an organization implement external role separation.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing architecture and provisioning for name/address resolution services; access control policy and procedures; system design documentation; assessment results from independent testing organizations; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for managing DNS
      TEST: Mechanisms supporting and/or implementing name/address resolution services for fault tolerance and role separation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Systems that provide name and address resolution services include domain name system (DNS) servers. To eliminate single points of failure in systems and enhance redundancy, organizations employ at least two authoritative domain name system servers—one configured as the primary server and the other configured as the secondary server. Additionally, organizations typically deploy the servers in two geographically separated network subnetworks (i.e., not located in the same physical facility). For role separation, DNS servers with internal roles only process name and address resolution requests from within organizations (i.e., from internal clients). DNS servers with external roles only process name and address resolution information requests from clients external to organizations (i.e., on external networks, including the Internet). Organizations specify clients that can access authoritative DNS servers in certain roles (e.g., by address ranges and explicit lists).
  GUIDANCE
  tag nist: ['SC-22']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control SC-22' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
