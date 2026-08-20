control 'IR-8' do
  impact 0.5
  title 'Incident Response Plan'
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
      IR-08a.
        IR-08a.01 an incident response plan is developed that provides the organization with a roadmap for implementing its incident response capability;
        IR-08a.02 an incident response plan is developed that describes the structure and organization of the incident response capability;
        IR-08a.03 an incident response plan is developed that provides a high-level approach for how the incident response capability fits into the overall organization;
        IR-08a.04 an incident response plan is developed that meets the unique requirements of the organization with regard to mission, size, structure, and functions;
        IR-08a.05 an incident response plan is developed that defines reportable incidents;
        IR-08a.06 an incident response plan is developed that provides metrics for measuring the incident response capability within the organization;
        IR-08a.07 an incident response plan is developed that defines the resources and management support needed to effectively maintain and mature an incident response capability;
        IR-08a.08 an incident response plan is developed that addresses the sharing of incident information;
        IR-08a.09 an incident response plan is developed that is reviewed and approved by #{input('ir_08_odp_01')} #{input('ir_08_odp_02')};
        IR-08a.10 an incident response plan is developed that explicitly designates responsibility for incident response to #{input('ir_08_odp_03')}.
      IR-08b.
        IR-08b.[01] copies of the incident response plan are distributed to #{input('ir_08_odp_04')};
        IR-08b.[02] copies of the incident response plan are distributed to #{input('ir_08_odp_05')};
      IR-08c. the incident response plan is updated to address system and organizational changes or problems encountered during plan implementation, execution, or testing;
      IR-08d.
        IR-08d.[01] incident response plan changes are communicated to #{input('ir_08_odp_06')};
        IR-08d.[02] incident response plan changes are communicated to #{input('ir_08_odp_07')};
      IR-08e.
        IR-08e.[01] the incident response plan is protected from unauthorized disclosure;
        IR-08e.[02] the incident response plan is protected from unauthorized modification.

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
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{ir_08_odp_01 ir_08_odp_02 ir_08_odp_03 ir_08_odp_04 ir_08_odp_05 ir_08_odp_06 ir_08_odp_07 ir_8_prm_5}

  describe 'NIST SP 800-53 Rev 5 control IR-8' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
