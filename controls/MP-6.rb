control 'MP-6' do
  impact 0.5
  title 'Media Sanitization'
  desc <<~DESC
    a. Sanitize #{input('mp_6_prm_1')} prior to disposal, release out of organizational control, or release for reuse using #{input('mp_6_prm_2')} ; and
    b. Employ sanitization mechanisms with the strength and integrity commensurate with the security category or classification of the information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MP-06a.
        MP-06a.[01] #{input('mp_06_odp_01')} is sanitized using #{input('mp_06_odp_04')} prior to disposal;
        MP-06a.[02] #{input('mp_06_odp_02')} is sanitized using #{input('mp_06_odp_05')} prior to release from organizational control;
        MP-06a.[03] #{input('mp_06_odp_03')} is sanitized using #{input('mp_06_odp_06')} prior to release for reuse;
      MP-06b. sanitization mechanisms with strength and integrity commensurate with the security category or classification of the information are employed.

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media sanitization and disposal; applicable federal standards and policies addressing media sanitization policy; media sanitization records; system audit records; system design documentation; records retention and disposition policy; records retention and disposition procedures; system configuration settings and associated documentation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with media sanitization responsibilities; organizational personnel with records retention and disposition responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Organizational processes for media sanitization; mechanisms supporting and/or implementing media sanitization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Media sanitization applies to all digital and non-digital system media subject to disposal or reuse, whether or not the media is considered removable. Examples include digital media in scanners, copiers, printers, notebook computers, workstations, network components, mobile devices, and non-digital media (e.g., paper and microfilm). The sanitization process removes information from system media such that the information cannot be retrieved or reconstructed. Sanitization techniques—including clearing, purging, cryptographic erase, de-identification of personally identifiable information, and destruction—prevent the disclosure of information to unauthorized individuals when such media is reused or released for disposal. Organizations determine the appropriate sanitization methods, recognizing that destruction is sometimes necessary when other methods cannot be applied to media requiring sanitization. Organizations use discretion on the employment of approved sanitization techniques and procedures for media that contains information deemed to be in the public domain or publicly releasable or information deemed to have no adverse impact on organizations or individuals if released for reuse or disposal. Sanitization of non-digital media includes destruction, removing a classified appendix from an otherwise unclassified document, or redacting selected sections or words from a document by obscuring the redacted sections or words in a manner equivalent in effectiveness to removing them from the document. NSA standards and policies control the sanitization process for media that contains classified information. NARA policies control the sanitization process for controlled unclassified information.
  GUIDANCE
  tag nist: ['MP-6']
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{mp_06_odp_01 mp_06_odp_02 mp_06_odp_03 mp_06_odp_04 mp_06_odp_05 mp_06_odp_06 mp_6_prm_1 mp_6_prm_2}

  describe 'NIST SP 800-53 Rev 5 control MP-6' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
