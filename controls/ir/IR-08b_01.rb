control 'IR-08b.[01]' do
  impact 0.5
  title "copies of the incident response plan are distributed to #{input('ir_08_odp_04')};"
  desc <<~DESC
    a. Develop an incident response plan that:
      1. Provides the organization with a roadmap for implementing its incident response capability;
      2. Describes the structure and organization of the incident response capability;
      3. Provides a high-level approach for how the incident response capability fits into the overall organization;
      4. Meets the unique requirements of the organization, which relate to mission, size, structure, and functions;
      5. Defines reportable incidents;
      6. Provides metrics for measuring the incident response capability within the organization;
      7. Defines the resources and management support needed to effectively maintain and mature an incident response capability;
      8. Addresses the sharing of incident information;
      9. Is reviewed and approved by #{input('ir_08_odp_01')} #{input('ir_08_odp_02')} ; and
      10. Explicitly designates responsibility for incident response to #{input('ir_08_odp_03')}.
    b. Distribute copies of the incident response plan to #{input('ir_08_odp_04')};
    c. Update the incident response plan to address system and organizational changes or problems encountered during plan implementation, execution, or testing;
    d. Communicate incident response plan changes to #{input('ir_8_prm_5')} ; and
    e. Protect the incident response plan from unauthorized disclosure and modification.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      copies of the incident response plan are distributed to #{input('ir_08_odp_04')};

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response planning; incident response plan; system security plan; privacy plan; records of incident response plan reviews and approvals; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response planning responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational incident response plan and related organizational processes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    It is important that organizations develop and implement a coordinated approach to incident response. Organizational mission and business functions determine the structure of incident response capabilities. As part of the incident response capabilities, organizations consider the coordination and sharing of information with external organizations, including external service providers and other organizations involved in the supply chain. For incidents involving personally identifiable information (i.e., breaches), include a process to determine whether notice to oversight organizations or affected individuals is appropriate and provide that notice accordingly.
  GUIDANCE
  tag nist: ['IR-8']
  tag control: 'IR-8'
  tag objective: 'IR-08b.[01]'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_ir_8: true
  tag odp: %w{ir_08_odp_01 ir_08_odp_02 ir_08_odp_03 ir_08_odp_04 ir_8_prm_5}

  describe 'NIST SP 800-53A Rev 5 objective IR-08b.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
