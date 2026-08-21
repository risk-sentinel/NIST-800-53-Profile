control 'IR-04(03)[02]' do
  impact 0.5
  title "#{input('ir_04_03_odp_02')} are taken in response to those incidents (defined in IR-04(03)_ODP[01]) to ensure the continuation of organizational mission and business functions."
  desc <<~DESC
    Identify #{input('ir_04_03_odp_01')} and take the following actions in response to those incidents to ensure continuation of organizational mission and business functions: #{input('ir_04_03_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ir_04_03_odp_02')} are taken in response to those incidents (defined in IR-04(03)_ODP[01]) to ensure the continuation of organizational mission and business functions.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident handling; incident response plan; privacy plan; list of classes of incidents; list of appropriate incident response actions; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with information security responsibilities
      TEST: Mechanisms that support and/or implement continuity of operations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Classes of incidents include malfunctions due to design or implementation errors and omissions, targeted malicious attacks, and untargeted malicious attacks. Incident response actions include orderly system degradation, system shutdown, fall back to manual mode or activation of alternative technology whereby the system operates differently, employing deceptive measures, alternate information flows, or operating in a mode that is reserved for when systems are under attack. Organizations consider whether continuity of operations requirements during an incident conflict with the capability to automatically disable the system as specified as part of [IR-4(5)](#ir-4.5).
  GUIDANCE
  tag nist: ['IR-4 (3)']
  tag control: 'IR-4 (3)'
  tag objective: 'IR-04(03)[02]'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_4_3: true
  tag odp: %w{ir_04_03_odp_01 ir_04_03_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective IR-04(03)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
