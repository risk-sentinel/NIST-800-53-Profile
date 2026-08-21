control 'SC-12(02)[02]' do
  impact 0.5
  title "symmetric cryptographic keys are controlled using #{input('sc_12_02_odp')} key management technology and processes;"
  desc <<~DESC
    Produce, control, and distribute symmetric cryptographic keys using #{input('sc_12_02_odp')} key management technology and processes.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      symmetric cryptographic keys are controlled using #{input('sc_12_02_odp')} key management technology and processes;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing cryptographic key establishment and management; system design documentation; system configuration settings and associated documentation; system audit records; list of FIPS-validated cryptographic products; list of NSA-approved cryptographic products; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with responsibilities for cryptographic key establishment or management
      TEST: Mechanisms supporting and/or implementing symmetric cryptographic key establishment and management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    [SP 800-56A](#20957dbb-6a1e-40a2-b38a-66f67d33ac2e), [SP 800-56B](#0d083d8a-5cc6-46f1-8d79-3081d42bcb75) , and [SP 800-56C](#eef62b16-c796-4554-955c-505824135b8a) provide guidance on cryptographic key establishment schemes and key derivation methods. [SP 800-57-1](#110e26af-4765-49e1-8740-6750f83fcda1), [SP 800-57-2](#e7942589-e267-4a5a-a3d9-f39a7aae81f0) , and [SP 800-57-3](#8306620b-1920-4d73-8b21-12008528595f) provide guidance on cryptographic key management.
  GUIDANCE
  tag nist: ['SC-12 (2)']
  tag control: 'SC-12 (2)'
  tag objective: 'SC-12(02)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_12_2: true
  tag odp: %w{sc_12_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-12(02)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
