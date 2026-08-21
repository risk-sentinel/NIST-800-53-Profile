control 'SC-31(02)' do
  impact 0.5
  title "the maximum bandwidth for identified covert #{input('sc_31_02_odp_01')} channels is reduced to #{input('sc_31_02_odp_02')}."
  desc <<~DESC
    Reduce the maximum bandwidth for identified covert #{input('sc_31_02_odp_01')} channels to #{input('sc_31_02_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the maximum bandwidth for identified covert #{input('sc_31_02_odp_01')} channels is reduced to #{input('sc_31_02_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing covert channel analysis; acquisition contracts for systems or services; acquisition documentation; system design documentation; system configuration settings and associated documentation; covert channel analysis documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with covert channel analysis responsibilities; system developers/integrators
      TEST: Organizational process for conducting covert channel analysis; mechanisms supporting and/or implementing covert channel analysis; mechanisms supporting and/or implementing the capability to reduce the bandwidth of covert channels
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The complete elimination of covert channels, especially covert timing channels, is usually not possible without significant performance impacts.
  GUIDANCE
  tag nist: ['SC-31 (2)']
  tag control: 'SC-31 (2)'
  tag objective: 'SC-31(02)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_31_2: true
  tag odp: %w{sc_31_02_odp_01 sc_31_02_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SC-31(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
