control 'SC-36[02]' do
  impact 0.5
  title "#{input('sc_36_odp_03')} are distributed across #{input('sc_36_odp_04')}."
  desc <<~DESC
    Distribute the following processing and storage components across multiple #{input('sc_36_prm_1')}: #{input('sc_36_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_36_odp_03')} are distributed across #{input('sc_36_odp_04')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; contingency planning policy and procedures; contingency plan; system design documentation; system configuration settings and associated documentation; system architecture; list of system physical locations (or environments) with distributed processing and storage; system facility diagrams; processing site agreements; storage site agreements; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel with contingency planning and plan implementation responsibilities; system developers/integrators
      TEST: Organizational processes for distributed processing and storage across multiple physical locations; mechanisms supporting and/or implementing the capability to distribute processing and storage across multiple physical locations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Distributing processing and storage across multiple physical locations or logical domains provides a degree of redundancy or overlap for organizations. The redundancy and overlap increase the work factor of adversaries to adversely impact organizational operations, assets, and individuals. The use of distributed processing and storage does not assume a single primary processing or storage location. Therefore, it allows for parallel processing and storage.
  GUIDANCE
  tag nist: ['SC-36']
  tag control: 'SC-36'
  tag objective: 'SC-36[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_36: true
  tag odp: %w{sc_36_odp_03 sc_36_odp_04 sc_36_prm_1 sc_36_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective SC-36[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
