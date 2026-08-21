control 'IR-04(08)' do
  impact 0.5
  title "there is coordination with #{input('ir_04_08_odp_01')} to correlate and share #{input('ir_04_08_odp_02')} to achieve a cross-organization perspective on incident awareness and more effective incident responses."
  desc <<~DESC
    Coordinate with #{input('ir_04_08_odp_01')} to correlate and share #{input('ir_04_08_odp_02')} to achieve a cross-organization perspective on incident awareness and more effective incident responses.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      there is coordination with #{input('ir_04_08_odp_01')} to correlate and share #{input('ir_04_08_odp_02')} to achieve a cross-organization perspective on incident awareness and more effective incident responses.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident handling; list of external organizations; records of incident handling coordination with external organizations; incident response plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with information security and privacy responsibilities; personnel from external organizations with whom incident response information is to be coordinated, shared, and correlated
      TEST: Organizational processes for coordinating incident handling information with external organizations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The coordination of incident information with external organizations—including mission or business partners, military or coalition partners, customers, and developers—can provide significant benefits. Cross-organizational coordination can serve as an important risk management capability. This capability allows organizations to leverage information from a variety of sources to effectively respond to incidents and breaches that could potentially affect the organization’s operations, assets, and individuals.
  GUIDANCE
  tag nist: ['IR-4 (8)']
  tag control: 'IR-4 (8)'
  tag objective: 'IR-04(08)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_4_8: true
  tag odp: %w{ir_04_08_odp_01 ir_04_08_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective IR-04(08)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
