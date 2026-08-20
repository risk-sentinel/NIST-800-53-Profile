control 'AC-4 (13)' do
  impact 0.5
  title 'Decomposition into Policy-relevant Subcomponents'
  desc <<~DESC
    When transferring information between different security domains, decompose information into #{input('ac_04_13_odp')} for submission to policy enforcement mechanisms.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(13) when transferring information between different security domains, information is decomposed into #{input('ac_04_13_odp')} for submission to policy enforcement mechanisms.

    Assessment methods and objects:
      EXAMINE: Access control policy; information flow control policies; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing information flow enforcement policy
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Decomposing information into policy-relevant subcomponents prior to information transfer facilitates policy decisions on source, destination, certificates, classification, attachments, and other security- or privacy-related component differentiators. Policy enforcement mechanisms apply filtering, inspection, and/or sanitization rules to the policy-relevant subcomponents of information to facilitate flow enforcement prior to transferring such information to different security domains.
  GUIDANCE
  tag nist: ['AC-4 (13)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_04_13_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (13)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
