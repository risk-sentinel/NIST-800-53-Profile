control 'AU-14' do
  impact 0.5
  title 'Session Audit'
  desc <<~DESC
    a. Provide and implement the capability for #{input('au_14_odp_01')} to #{input('au_14_odp_02')} the content of a user session under #{input('au_14_odp_03')} ; and
    b. Develop, integrate, and use session auditing activities in consultation with legal counsel and in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-14a.
        AU-14a.[01] #{input('au_14_odp_01')} are provided with the capability to #{input('au_14_odp_02')} the content of a user session under #{input('au_14_odp_03')};
        AU-14a.[02] the capability for #{input('au_14_odp_01')} to #{input('au_14_odp_02')} the content of a user session under #{input('au_14_odp_03')} is implemented;
      AU-14b.
        AU-14b.[01] session auditing activities are developed in consultation with legal counsel and in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines;
        AU-14b.[02] session auditing activities are integrated in consultation with legal counsel and in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines;
        AU-14b.[03] session auditing activities are used in consultation with legal counsel and in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines;

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing user session auditing; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; system/network administrators; system developers; legal counsel; personnel with civil liberties responsibilities
      TEST: Mechanisms implementing user session auditing capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Session audits can include monitoring keystrokes, tracking websites visited, and recording information and/or file transfers. Session audit capability is implemented in addition to event logging and may involve implementation of specialized session capture technology. Organizations consider how session auditing can reveal information about individuals that may give rise to privacy risk as well as how to mitigate those risks. Because session auditing can impact system and network performance, organizations activate the capability under well-defined situations (e.g., the organization is suspicious of a specific individual). Organizations consult with legal counsel, civil liberties officials, and privacy officials to ensure that any legal, privacy, civil rights, or civil liberties issues, including the use of personally identifiable information, are appropriately addressed.
  GUIDANCE
  tag nist: ['AU-14']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag odp: %w{au_14_odp_01 au_14_odp_02 au_14_odp_03}

  describe 'NIST SP 800-53 Rev 5 control AU-14' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
