control 'IA-05(05)' do
  impact 0.5
  title "developers and installers of system components are required to provide unique authenticators or change default authenticators prior to delivery and installation."
  desc <<~DESC
    Require developers and installers of system components to provide unique authenticators or change default authenticators prior to delivery and installation.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      developers and installers of system components are required to provide unique authenticators or change default authenticators prior to delivery and installation.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; system and services acquisition policy; procedures addressing authenticator management; procedures addressing the integration of security requirements into the acquisition process; acquisition documentation; acquisition contracts for system procurements or services; other relevant documents or records
      INTERVIEW: Organizational personnel with authenticator management responsibilities; organizational personnel with information security, acquisition, and contracting responsibilities; system developers
      TEST: Mechanisms supporting and/or implementing authenticator management capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Changing authenticators prior to the delivery and installation of system components extends the requirement for organizations to change default authenticators upon system installation by requiring developers and/or installers to provide unique authenticators or change default authenticators for system components prior to delivery and/or installation. However, it typically does not apply to developers of commercial off-the-shelf information technology products. Requirements for unique authenticators can be included in acquisition documents prepared by organizations when procuring systems or system components.
  GUIDANCE
  tag nist: ['IA-5 (5)']
  tag control: 'IA-5 (5)'
  tag objective: 'IA-05(05)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_5_5: true

  describe 'NIST SP 800-53A Rev 5 objective IA-05(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
