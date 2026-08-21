control 'AU-06b.' do
  impact 0.5
  title "findings are reported to #{input('au_06_odp_03')};"
  desc <<~DESC
    a. Review and analyze system audit records #{input('au_06_odp_01')} for indications of #{input('au_06_odp_02')} and the potential impact of the inappropriate or unusual activity;
    b. Report findings to #{input('au_06_odp_03')} ; and
    c. Adjust the level of audit record review, analysis, and reporting within the system when there is a change in risk based on law enforcement information, intelligence information, or other credible sources of information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      findings are reported to #{input('au_06_odp_03')};

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing audit review, analysis, and reporting; reports of audit findings; records of actions taken in response to reviews/analyses of audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit review, analysis, and reporting responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit record review, analysis, and reporting covers information security- and privacy-related logging performed by organizations, including logging that results from the monitoring of account usage, remote access, wireless connectivity, mobile device connection, configuration settings, system component inventory, use of maintenance tools and non-local maintenance, physical access, temperature and humidity, equipment delivery and removal, communications at system interfaces, and use of mobile code or Voice over Internet Protocol (VoIP). Findings can be reported to organizational entities that include the incident response team, help desk, and security or privacy offices. If organizations are prohibited from reviewing and analyzing audit records or unable to conduct such activities, the review or analysis may be carried out by other organizations granted such authority. The frequency, scope, and/or depth of the audit record review, analysis, and reporting may be adjusted to meet organizational needs based on new information received.
  GUIDANCE
  tag nist: ['AU-6']
  tag control: 'AU-6'
  tag objective: 'AU-06b.'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_au_6: true
  tag odp: %w{au_06_odp_01 au_06_odp_02 au_06_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective AU-06b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
