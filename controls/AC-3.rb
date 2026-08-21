control 'AC-3' do
  impact 0.5
  title 'Access Enforcement'
  desc <<~DESC
    Enforce approved authorizations for logical access to information and system resources in accordance with applicable access control policies.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-03 approved authorizations for logical access to information and system resources are enforced in accordance with applicable access control policies.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; list of approved authorizations (user privileges); system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing access control policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Access control policies control access between active entities or subjects (i.e., users or processes acting on behalf of users) and passive entities or objects (i.e., devices, files, records, domains) in organizational systems. In addition to enforcing authorized access at the system level and recognizing that systems can host many applications and services in support of mission and business functions, access enforcement mechanisms can also be employed at the application and service level to provide increased information security and privacy. In contrast to logical access controls that are implemented within the system, physical access controls are addressed by the controls in the Physical and Environmental Protection ( [PE](#pe) ) family.
  GUIDANCE
  tag nist: ['AC-3']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control AC-3' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
