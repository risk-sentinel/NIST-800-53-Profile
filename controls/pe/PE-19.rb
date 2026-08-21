control 'PE-19' do
  impact 0.5
  title "the system is protected from information leakage due to electromagnetic signal emanations."
  desc <<~DESC
    Protect the system from information leakage due to electromagnetic signals emanations.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the system is protected from information leakage due to electromagnetic signal emanations.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing information leakage due to electromagnetic signal emanations; mechanisms protecting the system against electronic signal emanations; facility housing the system; records from electromagnetic signal emanation tests; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for system environmental controls; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing protection from information leakage due to electromagnetic signal emanations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information leakage is the intentional or unintentional release of data or information to an untrusted environment from electromagnetic signals emanations. The security categories or classifications of systems (with respect to confidentiality), organizational security policies, and risk tolerance guide the selection of controls employed to protect systems against information leakage due to electromagnetic signals emanations.
  GUIDANCE
  tag nist: ['PE-19']
  tag control: 'PE-19'
  tag objective: 'PE-19'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_19: true

  describe 'NIST SP 800-53A Rev 5 objective PE-19' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
