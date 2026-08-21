control 'AC-16(08)[01]' do
  impact 0.5
  title "#{input('ac_16_08_odp_01')} are implemented in associating security attributes to information;"
  desc <<~DESC
    Implement #{input('ac_16_8_prm_1')} in associating security and privacy attributes to information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_16_08_odp_01')} are implemented in associating security attributes to information;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing association of security and privacy attributes to information; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for associating security and privacy attributes to information; organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms implementing techniques or technologies associating security and privacy attributes to information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The association of security and privacy attributes to information within systems is important for conducting automated access enforcement and flow enforcement actions. The association of such attributes to information (i.e., binding) can be accomplished with technologies and techniques that provide different levels of assurance. For example, systems can cryptographically bind attributes to information using digital signatures that support cryptographic keys protected by hardware devices (sometimes known as hardware roots of trust).
  GUIDANCE
  tag nist: ['AC-16 (8)']
  tag control: 'AC-16 (8)'
  tag objective: 'AC-16(08)[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_16_8: true
  tag odp: %w{ac_16_08_odp_01 ac_16_8_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective AC-16(08)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
