control 'SC-31(03)' do
  impact 0.5
  title "the bandwidth of #{input('sc_31_03_odp')} is measured in the operational environment of the system."
  desc <<~DESC
    Measure the bandwidth of #{input('sc_31_03_odp')} in the operational environment of the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the bandwidth of #{input('sc_31_03_odp')} is measured in the operational environment of the system.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing covert channel analysis; system design documentation; system configuration settings and associated documentation; covert channel analysis documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with covert channel analysis responsibilities; system developers/integrators
      TEST: Organizational process for conducting covert channel analysis; mechanisms supporting and/or implementing covert channel analysis; mechanisms supporting and/or implementing the capability to measure the bandwidth of covert channels
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Measuring covert channel bandwidth in specified operational environments helps organizations determine how much information can be covertly leaked before such leakage adversely affects mission or business functions. Covert channel bandwidth may be significantly different when measured in settings that are independent of the specific environments of operation, including laboratories or system development environments.
  GUIDANCE
  tag nist: ['SC-31 (3)']
  tag control: 'SC-31 (3)'
  tag objective: 'SC-31(03)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_31_3: true
  tag odp: %w{sc_31_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-31(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
