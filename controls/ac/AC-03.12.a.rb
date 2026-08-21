control 'AC-03(12)(a)' do
  impact 0.5
  title "as part of the installation process, applications are required to assert the access needed to the following system applications and functions: #{input('ac_03_12_odp')};"
  desc <<~DESC
    (a) Require applications to assert, as part of the installation process, the access needed to the following system applications and functions: #{input('ac_03_12_odp')};
    (b) Provide an enforcement mechanism to prevent unauthorized access; and
    (c) Approve access changes after initial installation of the application.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      as part of the installation process, applications are required to assert the access needed to the following system applications and functions: #{input('ac_03_12_odp')};

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing access enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Asserting and enforcing application access is intended to address applications that need to access existing system applications and functions, including user contacts, global positioning systems, cameras, keyboards, microphones, networks, phones, or other files.
  GUIDANCE
  tag nist: ['AC-3 (12)']
  tag control: 'AC-3 (12)'
  tag objective: 'AC-03(12)(a)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_3_12: true
  tag odp: %w{ac_03_12_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-03(12)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
