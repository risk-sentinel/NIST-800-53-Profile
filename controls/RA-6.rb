control 'RA-6' do
  impact 0.5
  title 'Technical Surveillance Countermeasures Survey'
  desc <<~DESC
    Employ a technical surveillance countermeasures survey at #{input('ra_06_odp_01')} #{input('ra_06_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      RA-06 a technical surveillance countermeasures survey is employed at #{input('ra_06_odp_01')} #{input('ra_06_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; procedures addressing technical surveillance countermeasures surveys; audit records/event logs; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with technical surveillance countermeasures surveys responsibilities; system/network administrators; organizational personnel with security responsibilities
      TEST: Organizational processes for technical surveillance countermeasures surveys; mechanisms/tools supporting and/or implementing technical surveillance countermeasure surveys
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A technical surveillance countermeasures survey is a service provided by qualified personnel to detect the presence of technical surveillance devices and hazards and to identify technical security weaknesses that could be used in the conduct of a technical penetration of the surveyed facility. Technical surveillance countermeasures surveys also provide evaluations of the technical security posture of organizations and facilities and include visual, electronic, and physical examinations of surveyed facilities, internally and externally. The surveys also provide useful input for risk assessments and information regarding organizational exposure to potential adversaries.
  GUIDANCE
  tag nist: ['RA-6']
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{}
  tag odp: %w{ra_06_odp_01 ra_06_odp_02}

  describe 'NIST SP 800-53 Rev 5 control RA-6' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
