control 'AU-13 (2)' do
  impact 0.5
  title 'Review of Monitored Sites'
  desc <<~DESC
    Review the list of open-source information sites being monitored #{input('au_13_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-13(02) the list of open-source information sites being monitored is reviewed #{input('au_13_02_odp')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing information disclosure monitoring; system design documentation; system configuration settings and associated documentation; reviews for open-source information sites being monitored; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for monitoring open-source information sites; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms implementing monitoring for information disclosure
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Reviewing the current list of open-source information sites being monitored on a regular basis helps to ensure that the selected sites remain relevant. The review also provides the opportunity to add new open-source information sites with the potential to provide evidence of unauthorized disclosure of organizational information. The list of sites monitored can be guided and informed by threat intelligence of other credible sources of information.
  GUIDANCE
  tag nist: ['AU-13 (2)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag odp: %w{au_13_02_odp}

  describe 'NIST SP 800-53 Rev 5 control AU-13 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
