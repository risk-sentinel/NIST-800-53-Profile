control 'IR-04d.[01]' do
  impact 0.5
  title "the rigor of incident handling activities is comparable and predictable across the organization;"
  desc <<~DESC
    a. Implement an incident handling capability for incidents that is consistent with the incident response plan and includes preparation, detection and analysis, containment, eradication, and recovery;
    b. Coordinate incident handling activities with contingency planning activities;
    c. Incorporate lessons learned from ongoing incident handling activities into incident response procedures, training, and testing, and implement the resulting changes accordingly; and
    d. Ensure the rigor, intensity, scope, and results of incident handling activities are comparable and predictable across the organization.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the rigor of incident handling activities is comparable and predictable across the organization;

    Assessment methods and objects:
      EXAMINE: Incident response policy; contingency planning policy; procedures addressing incident handling; incident response plan; contingency plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with contingency planning responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Incident handling capability for the organization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations recognize that incident response capabilities are dependent on the capabilities of organizational systems and the mission and business processes being supported by those systems. Organizations consider incident response as part of the definition, design, and development of mission and business processes and systems. Incident-related information can be obtained from a variety of sources, including audit monitoring, physical access monitoring, and network monitoring; user or administrator reports; and reported supply chain events. An effective incident handling capability includes coordination among many organizational entities (e.g., mission or business owners, system owners, authorizing officials, human resources offices, physical security offices, personnel security offices, legal departments, risk executive [function], operations personnel, procurement offices). Suspected security incidents include the receipt of suspicious email communications that can contain malicious code. Suspected supply chain incidents include the insertion of counterfeit hardware or malicious code into organizational systems or system components. For federal agencies, an incident that involves personally identifiable information is considered a breach. A breach results in unauthorized disclosure, the loss of control, unauthorized acquisition, compromise, or a similar occurrence where a person other than an authorized user accesses or potentially accesses personally identifiable information or an authorized user accesses or potentially accesses such information for other than authorized purposes.
  GUIDANCE
  tag nist: ['IR-4']
  tag control: 'IR-4'
  tag objective: 'IR-04d.[01]'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_ir_4: true

  describe 'NIST SP 800-53A Rev 5 objective IR-04d.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
