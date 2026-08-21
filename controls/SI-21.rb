control 'SI-21' do
  impact 0.5
  title 'Information Refresh'
  desc <<~DESC
    Refresh #{input('si_21_odp_01')} at #{input('si_21_odp_02')} or generate the information on demand and delete the information when no longer needed.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-21 the #{input('si_21_odp_01')} is refreshed #{input('si_21_odp_02')} or is generated on demand and deleted when no longer needed.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; procedures addressing software and information integrity; system design documentation; system configuration settings and associated documentation; information refresh procedures; list of information to be refreshed; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for refreshing information; organizational personnel with information security and privacy responsibilities; organizational personnel with systems security engineering responsibilities; system developers
      TEST: Mechanisms for information refresh; organizational processes for information refresh
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Retaining information for longer than it is needed makes it an increasingly valuable and enticing target for adversaries. Keeping information available for the minimum period of time needed to support organizational missions or business functions reduces the opportunity for adversaries to compromise, capture, and exfiltrate that information.
  GUIDANCE
  tag nist: ['SI-21']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_21_odp_01 si_21_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SI-21' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
