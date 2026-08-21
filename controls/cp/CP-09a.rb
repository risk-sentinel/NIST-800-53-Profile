control 'CP-09a.' do
  impact 0.5
  title "backups of user-level information contained in #{input('cp_09_odp_01')} are conducted #{input('cp_09_odp_02')};"
  desc <<~DESC
    a. Conduct backups of user-level information contained in #{input('cp_09_odp_01')} #{input('cp_09_odp_02')};
    b. Conduct backups of system-level information contained in the system #{input('cp_09_odp_03')};
    c. Conduct backups of system documentation, including security- and privacy-related documentation #{input('cp_09_odp_04')} ; and
    d. Protect the confidentiality, integrity, and availability of backup information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      backups of user-level information contained in #{input('cp_09_odp_01')} are conducted #{input('cp_09_odp_02')};

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system backup; contingency plan; backup storage location(s); system backup logs or records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system backup responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for conducting system backups; mechanisms supporting and/or implementing system backups
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System-level information includes system state information, operating system software, middleware, application software, and licenses. User-level information includes information other than system-level information. Mechanisms employed to protect the integrity of system backups include digital signatures and cryptographic hashes. Protection of system backup information while in transit is addressed by [MP-5](#mp-5) and [SC-8](#sc-8) . System backups reflect the requirements in contingency plans as well as other organizational requirements for backing up information. Organizations may be subject to laws, executive orders, directives, regulations, or policies with requirements regarding specific categories of information (e.g., personal health information). Organizational personnel consult with the senior agency official for privacy and legal counsel regarding such requirements.
  GUIDANCE
  tag nist: ['CP-9']
  tag control: 'CP-9'
  tag objective: 'CP-09a.'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_9: true
  tag odp: %w{cp_09_odp_01 cp_09_odp_02 cp_09_odp_03 cp_09_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective CP-09a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
