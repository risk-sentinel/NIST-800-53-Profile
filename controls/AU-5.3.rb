control 'AU-5 (3)' do
  impact 0.5
  title 'Configurable Traffic Volume Thresholds'
  desc <<~DESC
    Enforce configurable network communications traffic volume thresholds reflecting limits on audit log storage capacity and #{input('au_05_03_odp')} network traffic above those thresholds.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-05(03)[01] configurable network communications traffic volume thresholds reflecting limits on audit log storage capacity are enforced;
      AU-05(03)[02] network traffic is #{input('au_05_03_odp')} if network traffic volume is above configured thresholds.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; procedures addressing response to audit processing failures; system design documentation; system security plan; privacy plan; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit and accountability responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations have the capability to reject or delay the processing of network communications traffic if audit logging information about such traffic is determined to exceed the storage capacity of the system audit logging function. The rejection or delay response is triggered by the established organizational traffic volume thresholds that can be adjusted based on changes to audit log storage capacity.
  GUIDANCE
  tag nist: ['AU-5 (3)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag odp: %w{au_05_03_odp}

  describe 'NIST SP 800-53 Rev 5 control AU-5 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
