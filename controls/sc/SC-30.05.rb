control 'SC-30(05)' do
  impact 0.5
  title "#{input('sc_30_05_odp_01')} are employed to hide or conceal #{input('sc_30_05_odp_02')}."
  desc <<~DESC
    Employ the following techniques to hide or conceal #{input('sc_30_05_odp_02')}: #{input('sc_30_05_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_30_05_odp_01')} are employed to hide or conceal #{input('sc_30_05_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; configuration management policy and procedures; procedures addressing concealment and misdirection techniques for the system; system design documentation; system configuration settings and associated documentation; list of techniques employed to hide or conceal system components; list of system components to be hidden or concealed; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with the responsibility to conceal system components
      TEST: Mechanisms supporting and/or implementing techniques for the concealment of system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    By hiding, disguising, or concealing critical system components, organizations may be able to decrease the probability that adversaries target and successfully compromise those assets. Potential means to hide, disguise, or conceal system components include the configuration of routers or the use of encryption or virtualization techniques.
  GUIDANCE
  tag nist: ['SC-30 (5)']
  tag control: 'SC-30 (5)'
  tag objective: 'SC-30(05)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_30_5: true
  tag odp: %w{sc_30_05_odp_01 sc_30_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SC-30(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
