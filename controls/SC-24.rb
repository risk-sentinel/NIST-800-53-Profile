control 'SC-24' do
  impact 0.5
  title 'Fail in Known State'
  desc <<~DESC
    Fail to a #{input('sc_24_odp_02')} for the following failures on the indicated components while preserving #{input('sc_24_odp_03')} in failure: #{input('sc_24_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-24 #{input('sc_24_odp_01')} fail to a #{input('sc_24_odp_02')} while preserving #{input('sc_24_odp_03')} in failure.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing system failure to known state; system design documentation; system configuration settings and associated documentation; list of failures requiring system to fail in a known state; state information to be preserved in system failure; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Mechanisms supporting and/or implementing the fail in known state capability; mechanisms preserving system state information in the event of a system failure
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Failure in a known state addresses security concerns in accordance with the mission and business needs of organizations. Failure in a known state prevents the loss of confidentiality, integrity, or availability of information in the event of failures of organizational systems or system components. Failure in a known safe state helps to prevent systems from failing to a state that may cause injury to individuals or destruction to property. Preserving system state information facilitates system restart and return to the operational mode with less disruption of mission and business processes.
  GUIDANCE
  tag nist: ['SC-24']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{sc_24_odp_01 sc_24_odp_02 sc_24_odp_03}

  describe 'NIST SP 800-53 Rev 5 control SC-24' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
