control 'CP-09(03)' do
  impact 0.5
  title "backup copies of #{input('cp_09_03_odp')} are stored in a separate facility or in a fire rated container that is not collocated with the operational system."
  desc <<~DESC
    Store backup copies of #{input('cp_09_03_odp')} in a separate facility or in a fire rated container that is not collocated with the operational system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      backup copies of #{input('cp_09_03_odp')} are stored in a separate facility or in a fire rated container that is not collocated with the operational system.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system backup; contingency plan; backup storage location(s); system backup configurations and associated documentation; system backup logs or records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning and plan implementation responsibilities; organizational personnel with system backup responsibilities; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Separate storage for critical information applies to all critical information regardless of the type of backup storage media. Critical system software includes operating systems, middleware, cryptographic key management systems, and intrusion detection systems. Security-related information includes inventories of system hardware, software, and firmware components. Alternate storage sites, including geographically distributed architectures, serve as separate storage facilities for organizations. Organizations may provide separate storage by implementing automated backup processes at alternative storage sites (e.g., data centers). The General Services Administration (GSA) establishes standards and specifications for security and fire rated containers.
  GUIDANCE
  tag nist: ['CP-9 (3)']
  tag control: 'CP-9 (3)'
  tag objective: 'CP-09(03)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cp_9_3: true
  tag odp: %w{cp_09_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective CP-09(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
