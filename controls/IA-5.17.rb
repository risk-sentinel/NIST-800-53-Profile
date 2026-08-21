control 'IA-5 (17)' do
  impact 0.5
  title 'Presentation Attack Detection for Biometric Authenticators'
  desc <<~DESC
    Employ presentation attack detection mechanisms for biometric-based authentication.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-05(17) presentation attack detection mechanisms are employed for biometric-based authentication.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identifier management; system security plan; system design documentation; mechanisms providing dynamic binding of identifiers and authenticators; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with identification and authentication management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms supporting and/or implementing account management capability; mechanisms supporting and/or implementing identification and authentication management capabilities for the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Biometric characteristics do not constitute secrets. Such characteristics can be obtained by online web accesses, taking a picture of someone with a camera phone to obtain facial images with or without their knowledge, lifting from objects that someone has touched (e.g., a latent fingerprint), or capturing a high-resolution image (e.g., an iris pattern). Presentation attack detection technologies including liveness detection, can mitigate the risk of these types of attacks by making it difficult to produce artifacts intended to defeat the biometric sensor.
  GUIDANCE
  tag nist: ['IA-5 (17)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control IA-5 (17)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
