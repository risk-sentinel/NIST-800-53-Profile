control 'SI-6 (2)' do
  impact 0.5
  title 'Automation Support for Distributed Testing'
  desc <<~DESC
    Implement automated mechanisms to support the management of distributed security and privacy function testing.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-06(02)[01] automated mechanisms are implemented to support the management of distributed security function testing;
      SI-06(02)[02] automated mechanisms are implemented to support the management of distributed privacy function testing.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing security and privacy function verification; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security and privacy function verification responsibilities; organizational personnel implementing, operating, and maintaining the system; system/network administrators; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for security and privacy function verification; automated mechanisms supporting and/or implementing the management of distributed security and privacy testing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The use of automated mechanisms to support the management of distributed function testing helps to ensure the integrity, timeliness, completeness, and efficacy of such testing.
  GUIDANCE
  tag nist: ['SI-6 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SI-6 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
