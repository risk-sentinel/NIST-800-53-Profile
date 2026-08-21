control 'IA-03(03)(a)[02]' do
  impact 0.5
  title "dynamic address allocation lease duration assigned to devices where addresses are allocated dynamically are standardized in accordance with #{input('ia_03_03_odp_02')};"
  desc <<~DESC
    (a) Where addresses are allocated dynamically, standardize dynamic address allocation lease information and the lease duration assigned to devices in accordance with #{input('ia_3_3_prm_1')} ; and
    (b) Audit lease information when assigned to a device.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      dynamic address allocation lease duration assigned to devices where addresses are allocated dynamically are standardized in accordance with #{input('ia_03_03_odp_02')};

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing device identification and authentication; system design documentation; system configuration settings and associated documentation; evidence of lease information and lease duration assigned to devices; device connection reports; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with operational responsibilities for device identification and authentication; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing device identification and authentication capabilities; mechanisms supporting and/or implementing dynamic address allocation; mechanisms supporting and/or implanting auditing of lease information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The Dynamic Host Configuration Protocol (DHCP) is an example of a means by which clients can dynamically receive network address assignments.
  GUIDANCE
  tag nist: ['IA-3 (3)']
  tag control: 'IA-3 (3)'
  tag objective: 'IA-03(03)(a)[02]'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_3_3: true
  tag odp: %w{ia_03_03_odp_02 ia_3_3_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective IA-03(03)(a)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
