control 'AU-13 (1)' do
  impact 0.5
  title 'Use of Automated Tools'
  desc <<~DESC
    Monitor open-source information and information sites using #{input('au_13_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-13(01) open-source information and information sites are monitored using #{input('au_13_01_odp')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing information disclosure monitoring; system design documentation; system configuration settings and associated documentation; automated monitoring tools; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for monitoring information disclosures; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms implementing monitoring for information disclosure
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms include commercial services that provide notifications and alerts to organizations and automated scripts to monitor new posts on websites.
  GUIDANCE
  tag nist: ['AU-13 (1)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag odp: %w{au_13_01_odp}

  describe 'NIST SP 800-53 Rev 5 control AU-13 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
