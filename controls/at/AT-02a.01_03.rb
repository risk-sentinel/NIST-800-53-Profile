control 'AT-02a.01[03]' do
  impact 0.5
  title "security literacy training is provided to system users (including managers, senior executives, and contractors) #{input('at_02_odp_01')} thereafter;"
  desc <<~DESC
    a. Provide security and privacy literacy training to system users (including managers, senior executives, and contractors):
      1. As part of initial training for new users and #{input('at_2_prm_1')} thereafter; and
      2. When required by system changes or following #{input('at_2_prm_2')};
    b. Employ the following techniques to increase the security and privacy awareness of system users #{input('at_02_odp_05')};
    c. Update literacy training and awareness content #{input('at_02_odp_06')} and following #{input('at_02_odp_07')} ; and
    d. Incorporate lessons learned from internal or external security incidents or breaches into literacy training and awareness techniques.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      security literacy training is provided to system users (including managers, senior executives, and contractors) #{input('at_02_odp_01')} thereafter;

    Assessment methods and objects:
      EXAMINE: System security plan; privacy plan; literacy training and awareness policy; procedures addressing literacy training and awareness implementation; appropriate codes of federal regulations; security and privacy literacy training curriculum; security and privacy literacy training materials; training records; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for literacy training and awareness; organizational personnel with information security and privacy responsibilities; organizational personnel comprising the general system user community
      TEST: Mechanisms managing information security and privacy literacy training
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations provide basic and advanced levels of literacy training to system users, including measures to test the knowledge level of users. Organizations determine the content of literacy training and awareness based on specific organizational requirements, the systems to which personnel have authorized access, and work environments (e.g., telework). The content includes an understanding of the need for security and privacy as well as actions by users to maintain security and personal privacy and to respond to suspected incidents. The content addresses the need for operations security and the handling of personally identifiable information.

    Awareness techniques include displaying posters, offering supplies inscribed with security and privacy reminders, displaying logon screen messages, generating email advisories or notices from organizational officials, and conducting awareness events. Literacy training after the initial training described in [AT-2a.1](#at-2_smt.a.1) is conducted at a minimum frequency consistent with applicable laws, directives, regulations, and policies. Subsequent literacy training may be satisfied by one or more short ad hoc sessions and include topical information on recent attack schemes, changes to organizational security and privacy policies, revised security and privacy expectations, or a subset of topics from the initial training. Updating literacy training and awareness content on a regular basis helps to ensure that the content remains relevant. Events that may precipitate an update to literacy training and awareness content include, but are not limited to, assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines.
  GUIDANCE
  tag nist: ['AT-2']
  tag control: 'AT-2'
  tag objective: 'AT-02a.01[03]'
  tag rev: 'Rev_5'
  tag family: 'Awareness and Training'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_at_2: true
  tag odp: %w{at_02_odp_01 at_02_odp_05 at_02_odp_06 at_02_odp_07 at_2_prm_1 at_2_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective AT-02a.01[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
