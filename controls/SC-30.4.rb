control 'SC-30 (4)' do
  impact 0.5
  title 'Misleading Information'
  desc <<~DESC
    Employ realistic, but misleading information in #{input('sc_30_04_odp')} about its security state or posture.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-30(04) realistic but misleading information about the security state or posture of #{input('sc_30_04_odp')} is employed.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; configuration management policy and procedures; procedures addressing concealment and misdirection techniques for the system; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with the responsibility to define and employ realistic but misleading information about the security posture of system components
      TEST: Mechanisms supporting and/or implementing the employment of realistic but misleading information about the security posture of system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Employing misleading information is intended to confuse potential adversaries regarding the nature and extent of controls deployed by organizations. Thus, adversaries may employ incorrect and ineffective attack techniques. One technique for misleading adversaries is for organizations to place misleading information regarding the specific controls deployed in external systems that are known to be targeted by adversaries. Another technique is the use of deception nets that mimic actual aspects of organizational systems but use, for example, out-of-date software configurations.
  GUIDANCE
  tag nist: ['SC-30 (4)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_30_04_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-30 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
