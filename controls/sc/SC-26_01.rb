control 'SC-26[01]' do
  impact 0.5
  title "components within organizational systems specifically designed to be the target of malicious attacks are included to detect such attacks;"
  desc <<~DESC
    Include components within organizational systems specifically designed to be the target of malicious attacks for detecting, deflecting, and analyzing such attacks.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      components within organizational systems specifically designed to be the target of malicious attacks are included to detect such attacks;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing the use of decoys; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Mechanisms supporting and/or implementing decoys
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Decoys (i.e., honeypots, honeynets, or deception nets) are established to attract adversaries and deflect attacks away from the operational systems that support organizational mission and business functions. Use of decoys requires some supporting isolation measures to ensure that any deflected malicious code does not infect organizational systems. Depending on the specific usage of the decoy, consultation with the Office of the General Counsel before deployment may be needed.
  GUIDANCE
  tag nist: ['SC-26']
  tag control: 'SC-26'
  tag objective: 'SC-26[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_26: true

  describe 'NIST SP 800-53A Rev 5 objective SC-26[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
