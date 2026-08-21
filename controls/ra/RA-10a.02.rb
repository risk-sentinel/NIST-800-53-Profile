control 'RA-10a.02' do
  impact 0.5
  title "a cyber threat capability is established and maintained to detect, track, and disrupt threats that evade existing controls;"
  desc <<~DESC
    a. Establish and maintain a cyber threat hunting capability to:
      1. Search for indicators of compromise in organizational systems; and
      2. Detect, track, and disrupt threats that evade existing controls; and
    b. Employ the threat hunting capability #{input('ra_10_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a cyber threat capability is established and maintained to detect, track, and disrupt threats that evade existing controls;

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; assessment reports; audit records/event logs; threat hunting capability; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with threat hunting responsibilities; system/network administrators; organizational personnel with security responsibilities
      TEST: Organizational processes for assessments and audits; mechanisms/tools supporting and/or implementing threat hunting capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Threat hunting is an active means of cyber defense in contrast to traditional protection measures, such as firewalls, intrusion detection and prevention systems, quarantining malicious code in sandboxes, and Security Information and Event Management technologies and systems. Cyber threat hunting involves proactively searching organizational systems, networks, and infrastructure for advanced threats. The objective is to track and disrupt cyber adversaries as early as possible in the attack sequence and to measurably improve the speed and accuracy of organizational responses. Indications of compromise include unusual network traffic, unusual file changes, and the presence of malicious code. Threat hunting teams leverage existing threat intelligence and may create new threat intelligence, which is shared with peer organizations, Information Sharing and Analysis Organizations (ISAO), Information Sharing and Analysis Centers (ISAC), and relevant government departments and agencies.
  GUIDANCE
  tag nist: ['RA-10']
  tag control: 'RA-10'
  tag objective: 'RA-10a.02'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{}
  tag control_ra_10: true
  tag odp: %w{ra_10_odp}

  describe 'NIST SP 800-53A Rev 5 objective RA-10a.02' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
