control 'IR-07[02]' do
  impact 0.5
  title "the incident response support resource offers advice and assistance to users of the system for the response and reporting of incidents."
  desc <<~DESC
    Provide an incident response support resource, integral to the organizational incident response capability, that offers advice and assistance to users of the system for the handling and reporting of incidents.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the incident response support resource offers advice and assistance to users of the system for the response and reporting of incidents.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response assistance; incident response plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response assistance and support responsibilities; organizational personnel with access to incident response support and assistance capability; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for incident response assistance; mechanisms supporting and/or implementing incident response assistance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Incident response support resources provided by organizations include help desks, assistance groups, automated ticketing systems to open and track incident response tickets, and access to forensics services or consumer redress services, when required.
  GUIDANCE
  tag nist: ['IR-7']
  tag control: 'IR-7'
  tag objective: 'IR-07[02]'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_ir_7: true

  describe 'NIST SP 800-53A Rev 5 objective IR-07[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
