control 'AC-4 (25)' do
  impact 0.5
  title 'Data Sanitization'
  desc <<~DESC
    When transferring information between different security domains, sanitize data to minimize #{input('ac_04_25_odp_01')} in accordance with #{input('ac_04_25_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(25) when transferring information between different security domains, data is sanitized to minimize #{input('ac_04_25_odp_01')} in accordance with #{input('ac_04_25_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Information flow enforcement policy; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information flow enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing information flow enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Data sanitization is the process of irreversibly removing or destroying data stored on a memory device (e.g., hard drives, flash memory/solid state drives, mobile devices, CDs, and DVDs) or in hard copy form.
  GUIDANCE
  tag nist: ['AC-4 (25)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_04_25_odp_01 ac_04_25_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (25)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
