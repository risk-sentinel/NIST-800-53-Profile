control 'IA-03(01)' do
  impact 0.5
  title "#{input('ia_03_01_odp_01')} are authenticated before establishing #{input('ia_03_01_odp_02')} connection using bidirectional authentication that is cryptographically based."
  desc <<~DESC
    Authenticate #{input('ia_03_01_odp_01')} before establishing #{input('ia_03_01_odp_02')} connection using bidirectional authentication that is cryptographically based.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ia_03_01_odp_01')} are authenticated before establishing #{input('ia_03_01_odp_02')} connection using bidirectional authentication that is cryptographically based.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing device identification and authentication; system design documentation; list of devices requiring unique identification and authentication; device connection reports; system configuration settings and associated documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with operational responsibilities for device identification and authentication; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing device authentication capability; cryptographically based bidirectional authentication mechanisms
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A local connection is a connection with a device that communicates without the use of a network. A network connection is a connection with a device that communicates through a network. A remote connection is a connection with a device that communicates through an external network. Bidirectional authentication provides stronger protection to validate the identity of other devices for connections that are of greater risk.
  GUIDANCE
  tag nist: ['IA-3 (1)']
  tag control: 'IA-3 (1)'
  tag objective: 'IA-03(01)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_3_1: true
  tag odp: %w{ia_03_01_odp_01 ia_03_01_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective IA-03(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
