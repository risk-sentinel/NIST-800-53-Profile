control 'SI-12(02)[02]' do
  impact 0.5
  title "#{input('si_12_02_odp_02')} are used to minimize the use of personally identifiable information for testing;"
  desc <<~DESC
    Use the following techniques to minimize the use of personally identifiable information for research, testing, or training: #{input('si_12_2_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_12_02_odp_02')} are used to minimize the use of personally identifiable information for testing;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; personally identifiable information processing procedures; federal laws, Executive Orders, directives, policies, regulations, standards, and operational requirements applicable to minimizing the use of personally identifiable information in testing, training, and research; policy for the minimization of personally identifiable information used in testing, training, and research; procedures for the minimization of personally identifiable information used in testing, training, and research; documentation supporting minimization policy implementation (e.g., templates for testing, training, and research); data sets used for testing, training, and research; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with information and records management, retention, and disposition responsibilities; organizational personnel with information security and privacy responsibilities; network administrators; system developers; personnel with IRB responsibilities
      TEST: Organizational processes for the minimization of personally identifiable information used in testing, training, and research; automated mechanisms supporting and/or implementing the minimization of personally identifiable information used in testing, training, and research
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can minimize the risk to an individual’s privacy by employing techniques such as de-identification or synthetic data. Limiting the use of personally identifiable information throughout the information life cycle when the information is not needed for research, testing, or training helps reduce the level of privacy risk created by a system. Risk assessments as well as applicable laws, regulations, and policies can provide useful inputs to determining the techniques to use and when to use them.
  GUIDANCE
  tag nist: ['SI-12 (2)']
  tag control: 'SI-12 (2)'
  tag objective: 'SI-12(02)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_si_12_2: true
  tag odp: %w{si_12_02_odp_02 si_12_2_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SI-12(02)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
