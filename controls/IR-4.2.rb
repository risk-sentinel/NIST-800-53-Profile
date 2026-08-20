control 'IR-4 (2)' do
  impact 0.5
  title 'Dynamic Reconfiguration'
  desc <<~DESC
    Include the following types of dynamic reconfiguration for #{input('ir_04_02_odp_02')} as part of the incident response capability: #{input('ir_04_02_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-04(02) #{input('ir_04_02_odp_01')} for #{input('ir_04_02_odp_02')} are included as part of the incident response capability.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident handling; mechanisms supporting incident handling; list of system components to be dynamically reconfigured as part of incident response capability; system design documentation; system configuration settings and associated documentation; system audit records; incident response plan; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with information security responsibilities
      TEST: Mechanisms that support and/or implement the dynamic reconfiguration of components as part of incident response
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Dynamic reconfiguration includes changes to router rules, access control lists, intrusion detection or prevention system parameters, and filter rules for guards or firewalls. Organizations may perform dynamic reconfiguration of systems to stop attacks, misdirect attackers, and isolate components of systems, thus limiting the extent of the damage from breaches or compromises. Organizations include specific time frames for achieving the reconfiguration of systems in the definition of the reconfiguration capability, considering the potential need for rapid response to effectively address cyber threats.
  GUIDANCE
  tag nist: ['IR-4 (2)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag odp: %w{ir_04_02_odp_01 ir_04_02_odp_02}

  describe 'NIST SP 800-53 Rev 5 control IR-4 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
