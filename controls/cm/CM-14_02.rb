control 'CM-14[02]' do
  impact 0.5
  title "the installation of #{input('cm_14_odp_02')} is prevented unless it is verified that the firmware has been digitally signed using a certificate recognized and approved by the organization."
  desc <<~DESC
    Prevent the installation of #{input('cm_14_prm_1')} without verification that the component has been digitally signed using a certificate that is recognized and approved by the organization.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the installation of #{input('cm_14_odp_02')} is prevented unless it is verified that the firmware has been digitally signed using a certificate recognized and approved by the organization.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing digitally signed certificates for software and firmware components; configuration management plan; system security plan; system design documentation; change control records; system component inventory; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for verifying digitally signed certificates for software and firmware component installation; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Organizational processes governing information location; mechanisms enforcing policies and methods for governing information location; automated tools supporting or implementing digitally signatures for software and firmware components; automated tools supporting or implementing verification of digital signatures for software and firmware component installation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Software and firmware components prevented from installation unless signed with recognized and approved certificates include software and firmware version updates, patches, service packs, device drivers, and basic input/output system updates. Organizations can identify applicable software and firmware components by type, by specific items, or a combination of both. Digital signatures and organizational verification of such signatures is a method of code authentication.
  GUIDANCE
  tag nist: ['CM-14']
  tag control: 'CM-14'
  tag objective: 'CM-14[02]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag control_cm_14: true
  tag odp: %w{cm_14_odp_02 cm_14_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective CM-14[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
