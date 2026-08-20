control 'SC-37 (1)' do
  impact 0.5
  title 'Ensure Delivery and Transmission'
  desc <<~DESC
    Employ #{input('sc_37_01_odp_01')} to ensure that only #{input('sc_37_01_odp_02')} receive the following information, system components, or devices: #{input('sc_37_01_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-37(01) #{input('sc_37_01_odp_01')} are employed to ensure that only #{input('sc_37_01_odp_02')} receive #{input('sc_37_01_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing the use of out-of-band channels; access control policy and procedures; identification and authentication policy and procedures; system design documentation; system architecture; system configuration settings and associated documentation; list of security safeguards to be employed to ensure that designated individuals or systems receive organization-defined information, system components, or devices; list of security safeguards for delivering designated information, system components, or devices to designated individuals or systems; list of information, system components, or devices to be delivered to designated individuals or systems; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel authorizing, installing, configuring, operating, and/or using out-of-band channels; system developers/integrators
      TEST: Organizational processes for the use of out-of-band channels; mechanisms supporting and/or implementing the use of out-of-band channels; mechanisms supporting/implementing safeguards to ensure the delivery of designated information, system components, or devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Techniques employed by organizations to ensure that only designated systems or individuals receive certain information, system components, or devices include sending authenticators via an approved courier service but requiring recipients to show some form of government-issued photographic identification as a condition of receipt.
  GUIDANCE
  tag nist: ['SC-37 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_37_01_odp_01 sc_37_01_odp_02 sc_37_01_odp_03}

  describe 'NIST SP 800-53 Rev 5 control SC-37 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
