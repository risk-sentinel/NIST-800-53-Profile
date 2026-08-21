control 'SC-30' do
  impact 0.5
  title "#{input('sc_30_odp_01')} are employed for #{input('sc_30_odp_02')} for #{input('sc_30_odp_03')} to confuse and mislead adversaries."
  desc <<~DESC
    Employ the following concealment and misdirection techniques for #{input('sc_30_odp_02')} at #{input('sc_30_odp_03')} to confuse and mislead adversaries: #{input('sc_30_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_30_odp_01')} are employed for #{input('sc_30_odp_02')} for #{input('sc_30_odp_03')} to confuse and mislead adversaries.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing concealment and misdirection techniques for the system; system design documentation; system configuration settings and associated documentation; system architecture; list of concealment and misdirection techniques to be employed for organizational systems; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with the responsibility to implement concealment and misdirection techniques for systems
      TEST: Mechanisms supporting and/or implementing concealment and misdirection techniques
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Concealment and misdirection techniques can significantly reduce the targeting capabilities of adversaries (i.e., window of opportunity and available attack surface) to initiate and complete attacks. For example, virtualization techniques provide organizations with the ability to disguise systems, potentially reducing the likelihood of successful attacks without the cost of having multiple platforms. The increased use of concealment and misdirection techniques and methods—including randomness, uncertainty, and virtualization—may sufficiently confuse and mislead adversaries and subsequently increase the risk of discovery and/or exposing tradecraft. Concealment and misdirection techniques may provide additional time to perform core mission and business functions. The implementation of concealment and misdirection techniques may add to the complexity and management overhead required for the system.
  GUIDANCE
  tag nist: ['SC-30']
  tag control: 'SC-30'
  tag objective: 'SC-30'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_30: true
  tag odp: %w{sc_30_odp_01 sc_30_odp_02 sc_30_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SC-30' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
