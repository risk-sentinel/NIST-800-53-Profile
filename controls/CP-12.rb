control 'CP-12' do
  impact 0.5
  title 'Safe Mode'
  desc <<~DESC
    When #{input('cp_12_odp_02')} are detected, enter a safe mode of operation with #{input('cp_12_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-12 a safe mode of operation is entered with #{input('cp_12_odp_01')} when #{input('cp_12_odp_02')} are detected.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing safe mode of operation for the system; contingency plan; system design documentation; system configuration settings and associated documentation; system administration manuals; system operation manuals; system installation manuals; contingency plan test records; incident handling records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system operation responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing safe mode of operation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    For systems that support critical mission and business functions—including military operations, civilian space operations, nuclear power plant operations, and air traffic control operations (especially real-time operational environments)—organizations can identify certain conditions under which those systems revert to a predefined safe mode of operation. The safe mode of operation, which can be activated either automatically or manually, restricts the operations that systems can execute when those conditions are encountered. Restriction includes allowing only selected functions to execute that can be carried out under limited power or with reduced communications bandwidth.
  GUIDANCE
  tag nist: ['CP-12']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag odp: %w{cp_12_odp_01 cp_12_odp_02}

  describe 'NIST SP 800-53 Rev 5 control CP-12' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
