control 'AT-03c.' do
  impact 0.5
  title "lessons learned from internal or external security incidents or breaches are incorporated into role-based training."
  desc <<~DESC
    a. Provide role-based security and privacy training to personnel with the following roles and responsibilities: #{input('at_3_prm_1')}:
      1. Before authorizing access to the system, information, or performing assigned duties, and #{input('at_03_odp_03')} thereafter; and
      2. When required by system changes;
    b. Update role-based training content #{input('at_03_odp_04')} and following #{input('at_03_odp_05')} ; and
    c. Incorporate lessons learned from internal or external security incidents or breaches into role-based training.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      lessons learned from internal or external security incidents or breaches are incorporated into role-based training.

    Assessment methods and objects:
      EXAMINE: System security plan; privacy plan; security and privacy awareness and training policy; procedures addressing security and privacy training implementation; codes of federal regulations; security and privacy training curriculum; security and privacy training materials; training records; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for role-based security and privacy training; organizational personnel with assigned system security and privacy roles and responsibilities
      TEST: Mechanisms managing role-based security and privacy training
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations determine the content of training based on the assigned roles and responsibilities of individuals as well as the security and privacy requirements of organizations and the systems to which personnel have authorized access, including technical training specifically tailored for assigned duties. Roles that may require role-based training include senior leaders or management officials (e.g., head of agency/chief executive officer, chief information officer, senior accountable official for risk management, senior agency information security officer, senior agency official for privacy), system owners; authorizing officials; system security officers; privacy officers; acquisition and procurement officials; enterprise architects; systems engineers; software developers; systems security engineers; privacy engineers; system, network, and database administrators; auditors; personnel conducting configuration management activities; personnel performing verification and validation activities; personnel with access to system-level software; control assessors; personnel with contingency planning and incident response duties; personnel with privacy management responsibilities; and personnel with access to personally identifiable information.

    Comprehensive role-based training addresses management, operational, and technical roles and responsibilities covering physical, personnel, and technical controls. Role-based training also includes policies, procedures, tools, methods, and artifacts for the security and privacy roles defined. Organizations provide the training necessary for individuals to fulfill their responsibilities related to operations and supply chain risk management within the context of organizational security and privacy programs. Role-based training also applies to contractors who provide services to federal agencies. Types of training include web-based and computer-based training, classroom-style training, and hands-on training (including micro-training). Updating role-based training on a regular basis helps to ensure that the content remains relevant and effective. Events that may precipitate an update to role-based training content include, but are not limited to, assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines.
  GUIDANCE
  tag nist: ['AT-3']
  tag control: 'AT-3'
  tag objective: 'AT-03c.'
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_at_3: true
  tag odp: %w{at_03_odp_03 at_03_odp_04 at_03_odp_05 at_3_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective AT-03c.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
