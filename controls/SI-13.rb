control 'SI-13' do
  impact 0.5
  title 'Predictable Failure Prevention'
  desc <<~DESC
    a. Determine mean time to failure (MTTF) for the following system components in specific environments of operation: #{input('si_13_odp_01')} ; and
    b. Provide substitute system components and a means to exchange active and standby components in accordance with the following criteria: #{input('si_13_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-13a. mean time to failure (MTTF) is determined for #{input('si_13_odp_01')} in specific environments of operation;
      SI-13b. substitute system components and a means to exchange active and standby components are provided in accordance with #{input('si_13_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing predictable failure prevention; system design documentation; system configuration settings and associated documentation; list of MTTF substitution criteria; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for MTTF determinations and activities; organizational personnel with information security responsibilities; system/network administrators; organizational personnel with contingency planning responsibilities
      TEST: Organizational processes for managing MTTF
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    While MTTF is primarily a reliability issue, predictable failure prevention is intended to address potential failures of system components that provide security capabilities. Failure rates reflect installation-specific consideration rather than the industry-average. Organizations define the criteria for the substitution of system components based on the MTTF value with consideration for the potential harm from component failures. The transfer of responsibilities between active and standby components does not compromise safety, operational readiness, or security capabilities. The preservation of system state variables is also critical to help ensure a successful transfer process. Standby components remain available at all times except for maintenance issues or recovery failures in progress.
  GUIDANCE
  tag nist: ['SI-13']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_13_odp_01 si_13_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SI-13' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
